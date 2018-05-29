from django.shortcuts import render
from django.views import generic
from .models import Team, Player, League
from datetime import datetime

# Create your views here.


class TeamListView(generic.DetailView):
    model = Team
    template_name = 'roster.html'
    context_object_name = 'team'

    def get_context_data(self, **kwargs):
        context = super(TeamListView, self).get_context_data(**kwargs)
        context['roster'] = Player.objects.all()
        return context

TeamView = TeamListView.as_view()


class ScheduleListView(generic.DetailView):
    model = Team
    template_name = 'schedule.html'
    context_object_name = 'team'

ScheduleListView = ScheduleListView.as_view()


class CompactListView(generic.DetailView):
    model = Team
    template_name = 'compact.html'
    context_object_name = 'team'

CompactListView = CompactListView.as_view()


class HistoryDetailView(generic.DetailView):
    model = Team
    template_name = 'history.html'

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


def StandingsDetailView(request):
    context = {
        'title' : 'Classificação',
        'league' : League.objects.get(shortName='LNFA'),
    }
    return render(request, 'standings.html', context)

def ScheduleView(request):
    context = {
        'title' : 'Agenda',
    }
    return render(request, 'schedule2.html', context)

def LikenView(request):
    context = {
        'title' : 'Compare',
    }
    return render(request, 'liken.html', context)