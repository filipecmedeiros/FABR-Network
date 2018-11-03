from django.shortcuts import render
from django.views import generic

from .models import Championship, Season, Conference, Division, Round, Game
# Create your views here.
class SeasonDetailView(generic.DetailView):
    model = Season
    template_name = 'standings.html'
    context_object_name = 'season'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        league = Championship.objects.get(name=self.object.championship)
        conferences = Conference.objects.filter(season=self.object)

        conference_group = {}
        for conference in conferences:
        	conference_group[conference] = Division.objects.filter(conference=conference)
        
        context['title'] = league.name
        context['league'] = league
        context['conferences'] = conferences
        context['conference_group'] = conference_group
        return context

SeasonDetailView = SeasonDetailView.as_view()


def ScheduleView(request):
    context = {
        'title' : 'Agenda',
    }
    return render(request, 'schedule.html', context)