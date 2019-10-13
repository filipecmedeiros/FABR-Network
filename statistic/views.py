from django.shortcuts import render
from django.views import generic
from django.db.models import Count

from .models import Event
from championship.models import Game
from team.models import Team
# Create your views here.
def statistic (request, championship, conference=None):
    
    games = Game.objects.filter(week__season__slug=championship)
    
    attack_group = Event.objects.filter(game__in=games, 
        event_type__team_category__name='Ataque').values('playerA__team').annotate(
        total=Count('playerA__team')).order_by('playerA__team')[:10]
    
    attack = {}
    for g in attack_group:
        attack[Team.objects.get(id=g['playerA__team'])] = g['total']*6
    
    attack = sorted(attack.items(), key=lambda x: x[1], reverse=True)
    

    context = {
        'attack': attack
    }

    return render (request, 'statistic.html', context)