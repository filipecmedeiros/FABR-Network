from django.shortcuts import render, redirect
from django.views import generic
from django.db.models import Count, Q

from .models import Event
from championship.models import Championship, Season, Conference, Division, Game 
from team.models import Team

# Create your views here.
class StatisticDetailView(generic.DetailView):
    model = Season
    template_name = 'statistic.html'
    context_object_name = 'season'

    def _filter_by_team(self, games, team):
        events = Event.objects.filter(game__in=games, 
            event_type__team_category__name=team).values('playerA__team', 'event_type__points').annotate(
            total=Count('playerA__team')).order_by('playerA__team')[:10]
        
        category = {}
        for e in events:
            team = Team.objects.get(id=e['playerA__team'])
            if team in category:
                category[team] += e['total']*e['event_type__points']
            else:
                category[team] = e['total']*e['event_type__points']
        
        category = sorted(category.items(), key=lambda x: x[1], reverse=True)

        return category


    def _filter_by_team_inverse(self, games, team):
        events = Event.objects.filter(game__in=games, event_type__team_category__name=team).values(
            'game__teamA', 'game__teamB', 'playerA__team', 'event_type__points')


        category = {}
        for e in events:
            if e['playerA__team'] == e['game__teamA']:
                team = Team.objects.get(id=e['game__teamB'])
            else:
                team = Team.objects.get(id=e['game__teamA'])
            
            if team not in category:
                    category[team] = 0
            category[team] += e['event_type__points']
        
        category = sorted(category.items(), key=lambda x: x[1], reverse=False)[:10]
        
        return category

    def _filter_by_event_type(self, games, event_type):
        events = Event.objects.filter(game__in=games, 
            event_type__name=event_type).values('playerA__team').annotate(
            total=Count('playerA__team')).order_by('playerA__team')[:10]
        
        category = {}
        for e in events:
            category[Team.objects.get(id=e['playerA__team'])] = e['total']
        
        category = sorted(category.items(), key=lambda x: x[1], reverse=True)

        return category

    def _filter_by_multiple_event_types(self, games, list_event_types):
        events = Event.objects.filter(game__in=games, 
            event_type__name__in=list_event_types).values('playerA__team').annotate(
            total=Count('playerA__team')).order_by('playerA__team')[:10]
        
        category = {}
        for e in events:
            category[Team.objects.get(id=e['playerA__team'])] = e['total']
        
        category = sorted(category.items(), key=lambda x: x[1], reverse=True)

        return category

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        championships = Championship.objects.all()
        championship = self.object.championship
        seasons = Season.objects.filter(championship=self.object.championship)
        season = self.object
        conferences = Conference.objects.filter(season=self.object)
        conference = Conference.objects.filter(season=self.object,
                name=self.kwargs.get('conference', None)).first()
        if conference:
            divisions = Division.objects.filter(conference=conference)
            teams = []
            for division in divisions:
                teams.append(division.teams.all())
            teams = [item for sublist in teams for item in sublist]
            games = Game.objects.filter(Q(week__season=self.object),
                (Q(teamA__in=teams) | Q(teamB__in=teams)))
        else:
            conference = 'Todas'
            games = Game.objects.filter(week__season=self.object)


        attack = self._filter_by_team(games, 'Ataque')
        defense = self._filter_by_team_inverse(games, 'Ataque')
        special = self._filter_by_team(games, 'Time Especial')

        touchdown = self._filter_by_multiple_event_types(games,
            ['Touchdown passe', 'Touchdown corrida', 'Touchdown', 'Retorno de fumble', 'Pick six'])
        pass_touchdown = self._filter_by_event_type(games, 'Touchdown passe')
        run_touchdown = self._filter_by_event_type(games, 'Touchdown corrida')
        
        defense_touchdown = self._filter_by_multiple_event_types(games, ['Retorno de fumble', 'Pick six'])
        special_team_touchdown = self._filter_by_event_type(games, 'Touchdown')
        safety = self._filter_by_event_type(games, 'Safety')

        context = {
            'championships': championships,
            'championship': championship,
            'seasons': seasons,
            'season': season,
            'conferences':conferences,
            'conference': conference,
            'attack': attack,
            'defense': defense,
            'special': special,
            'touchdown': touchdown,
            'pass_touchdown': pass_touchdown,
            'run_touchdown': run_touchdown,
            'defense_touchdown': defense_touchdown,
            'special_team_touchdown': special_team_touchdown,
            'safety': safety
        }

        return context

StatisticDetailView = StatisticDetailView.as_view()

def seasonRedirect(request, slug):
    season = Season.objects.filter(slug__contains=slug).first()
    currentWeek = Round.objects.filter(week__gte=datetime.now(),
                                    season__slug=season.slug).last()
    if currentWeek != None:
        currentWeek = currentWeek.slug
    else:
        currentWeek = Round.objects.filter(week__lte=datetime.now(),
                                    season__slug=season.slug).first()
        currentWeek = currentWeek.slug
    return redirect('/estatisticas/'+season.slug+'/'+currentWeek)

def statisticRedirect(request):
    season = Season.objects.filter(slug__contains='bfa').first()
    
    return redirect('/estatisticas/'+season.slug+'/')
