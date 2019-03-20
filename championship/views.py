from django.shortcuts import render
from django.views import generic

from .models import Championship, Season, Conference, Division, Campaign, Round, Game
# Create your views here.


class SeasonDetailView(generic.DetailView):
    model = Season
    template_name = 'standings.html'
    context_object_name = 'season'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        league = Championship.objects.get(name=self.object.championship)
        seasons = Season.objects.filter(championship=league)
        conferences = Conference.objects.filter(season=self.object)
        rounds = Round.objects.filter(slug=self.kwargs.get('week', None))

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
        context['games'] = games
        return context

SeasonDetailView = SeasonDetailView.as_view()


def ScheduleView(request):
    context = {
        'title': 'Agenda',
    }
    return render(request, 'schedule.html', context)
