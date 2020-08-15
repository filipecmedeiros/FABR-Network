from django.shortcuts import render
from django.views import generic
from .models import Team, Player, TeamCategory
from datetime import datetime
from django.db.models import Q

from championship.models import Season, Round, Game
# Create your views here.

def teams(request):
    return teams_category(request, 'elite')

def teams_category(request, slug):
    category = TeamCategory.objects.get(name=slug.capitalize())

    context = {
        'categories': TeamCategory.objects.all(),
        'category': category,
        'teams':Team.objects.filter(category=category)
    }
    return render(request, 'teams.html', context)

class RosterListView(generic.DetailView):
    model = Team
    template_name = 'roster.html'
    context_object_name = 'team'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['roster'] = Player.objects.filter(team=self.object)
        context['weakName'] = self.object.name.replace(self.object.shortName, '')
        return context

RosterView = RosterListView.as_view()


class ScheduleListView(generic.DetailView):
    model = Team
    template_name = 'schedule.html'
    context_object_name = 'team'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['games'] = Game.objects.filter(Q(teamA=self.object) | Q(teamB=self.object)).order_by('week')[:5]
        context['current_season'] = context['games'][0].week.season.year
        year = datetime.today().year
        context['seasons'] = range(year, 2008, -1)
        return context

ScheduleListView = ScheduleListView.as_view()


class ScheduleByYearListView(generic.DetailView):
    model = Team
    template_name = 'schedule.html'
    context_object_name = 'team'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        seasons = Season.objects.filter(year=self.kwargs.get('year', None))
        weeks = []
        for season in seasons:
            weeks = weeks + list(Round.objects.filter(season=season))
        context['games'] = Game.objects.filter((Q(teamA=self.object) | Q(teamB=self.object)) & Q(week__in=weeks)).order_by('week')
        context['current_season'] = self.kwargs.get('year', None)
        year = datetime.today().year
        context['seasons'] = range(year, 2008, -1)
        return context

ScheduleByYearView = ScheduleByYearListView.as_view()

class CompactListView(generic.DetailView):
    model = Team
    template_name = 'compact.html'
    context_object_name = 'team'

CompactListView = CompactListView.as_view()

class InstagramDetailView(generic.DetailView):
    model = Team
    template_name = 'instagram.html'
    context_object_name = 'team'

InstagramDetailView = InstagramDetailView.as_view()

class FacebookDetailView(generic.DetailView):
    model = Team
    template_name = 'facebook.html'
    context_object_name = 'team'

FacebookDetailView = FacebookDetailView.as_view()


class HistoryDetailView(generic.DetailView):
    model = Team
    template_name = 'history.html'
    context_object_name = 'team'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['titles'] = Season.objects.filter(
            champion__name=self.object.name)
        return context

HistoryDetailView = HistoryDetailView.as_view()


class CampaignDatailView(generic.DetailView):
    model = Team
    template_name = 'campaign.html'

CampaignDatailView = CampaignDatailView.as_view()


def player(request, slug, playerSlug):
    team = Team.objects.get(slug=slug)
    player = Player.objects.get(slug=playerSlug)

    if player.birthdate:
        idade = datetime.now().year - player.birthdate.year
    else:
        idade = None
    context = {
        'team': team,
        'player': player,
        'idade': idade,
    }

    return render(request, 'player.html', context)


def LikenView(request):
    context = {
        'title': 'Compare',
    }
    return render(request, 'liken.html', context)
