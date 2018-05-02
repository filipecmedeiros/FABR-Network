from django.shortcuts import render
from django.views import generic
from .models import Team, Player

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
	template_name='compact.html'
	context_object_name = 'team'

CompactListView = CompactListView.as_view()
