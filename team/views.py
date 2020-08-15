from django.shortcuts import render
from django.views import generic
from .models import Team, Player, TeamCategory
from datetime import datetime
from django.db.models import Q

from championship.models import Season, Game
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


class TeamListView(generic.DetailView):
    model = Team
    template_name = 'roster.html'
    context_object_name = 'team'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['roster'] = Player.objects.filter(team=self.object)
        context['weakName'] = self.object.name.replace(self.object.shortName, '')
        return context

TeamView = TeamListView.as_view()


class ScheduleListView(generic.DetailView):
    model = Team
    template_name = 'schedule.html'
    context_object_name = 'team'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        context['games'] = Game.objects.filter(Q(teamA=self.object) | Q(teamB=self.object)).order_by('week')[:7]
        print (context['games'])
        return context

ScheduleListView = ScheduleListView.as_view()


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
