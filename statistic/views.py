from django.shortcuts import render
from django.views import generic
from django.db.models import Count

from .models import Event
from championship.models import Game
from team.models import Team

# Create your views here.
def filter_by_team(games, team):
    events = Event.objects.filter(game__in=games, 
        event_type__team_category__name=team).values('playerA__team').annotate(
        total=Count('playerA__team')).order_by('playerA__team')[:10]
    
    category = {}
    for e in events:
        category[Team.objects.get(id=e['playerA__team'])] = e['total']*6
    
    category = sorted(category.items(), key=lambda x: x[1], reverse=True)

    return category


def filter_by_event_type(games, event_type):
    events = Event.objects.filter(game__in=games, 
        event_type__name=event_type).values('playerA__team').annotate(
        total=Count('playerA__team')).order_by('playerA__team')[:10]
    
    category = {}
    for e in events:
        category[Team.objects.get(id=e['playerA__team'])] = e['total']
    
    category = sorted(category.items(), key=lambda x: x[1], reverse=True)

    return category


def statistic (request, championship, conference=None):
    
    games = Game.objects.filter(week__season__slug=championship)
    
    attack = filter_by_team(games, 'Ataque')
    special = filter_by_team(games, 'Time Especial')

    pass_touchdown = filter_by_event_type(games, 'Touchdown passe')
    run_touchdown = filter_by_event_type(games, 'Touchdown corrida')
    interception = filter_by_event_type(games, 'Interceptação')
    fumble = filter_by_event_type(games, 'Fumble')
    sack = filter_by_event_type(games, 'Sack')
    safety = filter_by_event_type(games, 'Safety')

    context = {
        'attack': attack,
        'special': special,
        'pass_touchdown': pass_touchdown,
        'run_touchdown': run_touchdown,
        'interception': interception,
        'fumble': fumble,
        'sack': sack,
        'safety': safety
    }

    return render (request, 'statistic.html', context)