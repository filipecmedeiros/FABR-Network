from django.shortcuts import render
from .models import Team

# Create your views here.
def TeamView(request, slug):
	context = {
		'title': 'Teste',
		'team' : Team.objects.get(slug=slug),
	}
	return render (request, 'roster.html', context)