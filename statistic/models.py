from django.db import models

from championship.models import Game
from team.models import SubTeam, Team, Player

# Create your models here.
class EventType(models.Model):
    team_category = models.ForeignKey(SubTeam, on_delete=models.CASCADE, verbose_name='Time')
    name = models.CharField('Tipo', max_length=255)
    points = models.IntegerField('Pontos', default=0)

    class Meta:
        verbose_name='Tipo de jogada'
        verbose_name_plural='Tipos de jogadas'
        ordering=['team_category', 'name']

    def __str__(self):
        return str(self.name) + ' (' + str(self.team_category) + ')'


class Period (models.Model):
    name = models.CharField('Período', null=True, blank=True, max_length=50)

    class Meta:
        verbose_name='Período'
        verbose_name_plural='Períodos'
        ordering=['name']

    def __str__(self):
        return str(self.name)


class Event (models.Model):
    game = models.ForeignKey(Game, on_delete=models.CASCADE, verbose_name='Jogo')
    event_type = models.ForeignKey(EventType, on_delete=models.CASCADE, verbose_name='Tipo de evento')
    playerA = models.ForeignKey(Player, related_name='playerA',
        on_delete=models.CASCADE, verbose_name='Jogador A')
    playerB = models.ForeignKey(Player, related_name='playerB', blank=True, null=True, on_delete=models.CASCADE, verbose_name='Jogador B')
    period = models.ForeignKey(Period, on_delete=models.CASCADE, blank=True, null=True, 
        verbose_name='Período')

    created = models.DateTimeField('Criado', auto_now_add=True)
    modified = models.DateTimeField('Modificado', auto_now=True)

    class Meta:
        verbose_name='Evento'
        verbose_name_plural='Eventos'
        ordering=['-game']

    def __str__(self):
        return str(self.game) + ' ' + str(self.event_type) + ':' + str(self.playerA) + str(self.playerB)
