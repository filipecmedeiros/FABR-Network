from django.shortcuts import render

from team.models import League

# Create your views here.
def index (request):
	return render (request, 'manutencao.html')

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
    return render(request, 'schedule.html', context)

def compare (request):
	return render (request, 'compare.html')

def compacts(request):
	return render(request, 'compacts.html')

def contact(request):
	return render(request, 'contato.html')