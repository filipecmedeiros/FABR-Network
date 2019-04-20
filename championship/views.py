from django.shortcuts import render, redirect
from django.views import generic
from datetime import datetime

from .models import Championship, Season, Conference, Division, Campaign, Round, Game
# Create your views here.

def championship_list(request):
    context = {
        'title':'Campeonatos',
        'championships':Championship.objects.all(),
    }
    return render(request, 'championship_list.html', context)



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
    return redirect('/campeonatos/'+season.slug+'/'+currentWeek)


class SeasonDetailView(generic.DetailView):
    model = Season
    template_name = 'standings.html'
    context_object_name = 'season'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        league = Championship.objects.get(name=self.object.championship)
        seasons = Season.objects.filter(championship=league)
        conferences = Conference.objects.filter(season=self.object)
        rounds = Round.objects.filter(slug=self.kwargs.get('week', None), 
                                                season__slug=self.object.slug)
        
        # Catch week before
        weekBefore = Round.objects.filter(week__lt=rounds[0].week, season__slug=self.object.slug).first()
        if weekBefore != None:
            weekBefore = weekBefore.slug
        
        # Catch next week
        nextWeek = Round.objects.filter(week__gt=rounds[0].week, season__slug=self.object.slug).last()
        if nextWeek != None:
            nextWeek = nextWeek.slug

        for conference in conferences:
            divisions = Division.objects.prefetch_related('conference')
            campaigns = Campaign.objects.prefetch_related('division__conference')

        games = {}
        for week in rounds:
            games[week] = Game.objects.filter(week=week)

        context['title'] = league.name
        context['league'] = league
        context['seasons'] = seasons
        context['conferences'] = conferences
        context['divisions'] = divisions
        context['campaigns'] = campaigns
        context['rounds'] = rounds
        context['weekBefore'] = weekBefore
        context['nextWeek'] = nextWeek
        context['games'] = games
        return context

SeasonDetailView = SeasonDetailView.as_view()


def ScheduleView(request):
    context = {
        'title': 'Agenda',
    }
    return render(request, 'schedule.html', context)
