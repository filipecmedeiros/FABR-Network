from django.db import models
from autoslug import AutoSlugField
from django.utils.text import slugify
from django.forms import CheckboxSelectMultiple
from django.urls import reverse
import datetime

from core.models import City
from team.models import Team, Position, Player
# Create your models here.
YEAR_CHOICES = []
for r in range(2008, (datetime.datetime.now().year + 3)):
    YEAR_CHOICES.append((r, r))

# Create your models here.


class Championship (models.Model):

    name = models.CharField('Nome', max_length=100, unique=True)
    shortName = models.CharField('Sigla', max_length=10, unique=True)
    logo = models.ImageField('Logo', upload_to='logos/', null=True, blank=True)

    primaryColor = models.CharField(
        'Cor primária', max_length=20, null=True, blank=True)
    secundaryColor = models.CharField(
        'Cor secundária', max_length=20, null=True, blank=True)
    terciaryColor = models.CharField(
        'Cor terciária', max_length=20, null=True, blank=True)

    facebook = models.URLField(
        'Facebook', max_length=255, null=True, blank=True)
    instagram = models.URLField(
        'Instagram', max_length=255, null=True, blank=True)

    created = models.DateTimeField('Criado', auto_now_add=True)
    modified = models.DateTimeField('Modificado', auto_now=True)

    class Meta:
        verbose_name = 'Campeonato'
        verbose_name_plural = 'Campeonatos'
        ordering = ['name']

    def __str__(self):
        return self.name


class Season (models.Model):

    championship = models.ForeignKey(
        Championship, on_delete=models.CASCADE, verbose_name='Campeonato')
    year = models.IntegerField('Ano', choices=YEAR_CHOICES,
                               default=datetime.datetime.now().year, null=True, blank=True)
    slug = AutoSlugField('Identificador', populate_from=slugify,
                         max_length=255, unique=True, always_update=True)
    champion = models.ForeignKey(
        Team, on_delete=models.CASCADE, blank=True, null=True, verbose_name='Campeão')

    created = models.DateTimeField('Criado', auto_now_add=True)
    modified = models.DateTimeField('Modificado', auto_now=True)

    def slugify():
        return "{}-{}".format(self.championship, self.year)

    def save(self, *args, **kwargs):
        self.slug += slugify(self.year)
        super(Season, self).save(*args, **kwargs)

    def get_absolute_url(self):
        return reverse('championship:season', kwargs={'slug': self.slug})

    class Meta:
        verbose_name = 'Temporada'
        verbose_name_plural = 'Temporadas'
        ordering = ['championship']

    def __str__(self):
        return str(self.championship.shortName) + ' ' + str(self.year)


class Conference (models.Model):

    name = models.CharField('Conferência', max_length=255)
    season = models.ForeignKey(
        Season, on_delete=models.CASCADE, verbose_name='Temporada')
    weeks = models.IntegerField('Semanas', null=True, blank=True)
    created = models.DateTimeField('Criado', auto_now_add=True)
    modified = models.DateTimeField('Modificado', auto_now=True)

    class Meta:
        verbose_name = 'Conferência'
        verbose_name_plural = 'Conferências'
        ordering = ['season', 'name']

    def __str__(self):
        return str(self.name) + ' da ' + str(self.season)


class Division (models.Model):
    name = models.CharField('Divisão', max_length=255)
    conference = models.ForeignKey(
        Conference, on_delete=models.CASCADE, verbose_name='Conferência')
    teams = models.ManyToManyField(Team, blank=True, through='Campaign', verbose_name='Times')
    playoffs = models.IntegerField('Classificados', null=True, blank=True)

    created = models.DateTimeField('Criado', auto_now_add=True)
    modified = models.DateTimeField('Modificado', auto_now=True)

    class Meta:
        verbose_name = 'Divisão'
        verbose_name_plural = 'Divisões'
        ordering = ['conference', 'name']

    def __str__(self):
        return str(self.name) + ' - ' + str(self.conference)

class Campaign (models.Model):
    division = models.ForeignKey(Division, on_delete=models.CASCADE, verbose_name='Divisão')
    team = models.ForeignKey(Team, on_delete=models.CASCADE, verbose_name='Time')
    
    victories = models.IntegerField('Vitórias')
    defeats = models.IntegerField('Derrotas')
    draws = models.IntegerField('Empates')
    atkPoints = models.IntegerField('Pontos feitos')
    dfPoints = models.IntegerField('Pontos sofridos')

    def __str__ (self):
        return str(self.team)

    class Meta:
        verbose_name='Campanha'
        verbose_name_plural='Campanhas'
        ordering=['division', '-victories', '-draws', 'defeats']


class Round(models.Model):
    week = models.CharField('Semana', max_length=255)
    season = models.ForeignKey(
        Season, on_delete=models.CASCADE, verbose_name='Temporada')

    class Meta:
        unique_together = (('week', 'season'),)
        verbose_name = 'Rodada'
        verbose_name_plural = 'Rodadas'
        ordering = ['-season', '-week']

    def __str__(self):
        return 'Rodada ' + str(self.week) + ' da ' + str(self.season)


class Game (models.Model):
    teamA = models.ForeignKey(
        Team, related_name='teamA', on_delete=models.CASCADE, verbose_name='Time A')
    teamB = models.ForeignKey(
        Team, related_name='teamB', on_delete=models.CASCADE, verbose_name='Time B')
    date = models.DateTimeField('Data e hora', null=True, blank=True)
    place = models.ForeignKey(
        City, on_delete=models.CASCADE, null=True, blank=True)
    week = models.ForeignKey(
        Round, on_delete=models.CASCADE, verbose_name='Rodada')
    ended = models.BooleanField('Finalizado')

    scoreA = models.IntegerField('Pontuação do time A', null=True, blank=True)
    scoreB = models.IntegerField('Pontuação do time B', null=True, blank=True)

    created = models.DateTimeField('Criado', auto_now_add=True)
    modified = models.DateTimeField('Modificado', auto_now=True)

    class Meta:
        verbose_name = 'Jogo'
        verbose_name_plural = 'Jogos'
        ordering = ['-week', '-date']

    def __str__(self):
        return str(self.date) + ':' + str(self.teamA) + ' x ' + str(self.teamB)

"""class EventType(models.Model):
    name = models.CharField('Tipo', max_length=255)

    class Meta:
        verbose_name='Tipo de evento'
        verbose_name_plural='Tipos de evento'
        ordering=['name']

    def __str__(self):
        return str(self.name)


class Period (models.Model):
    name = models.CharField('Período', max_length=50)

    class Meta:
        verbose_name='Período'
        verbose_name_plural='Períodos'
        ordering=['name']

    def __str__(self):
        return str(self.name)


class Event (models.Model):
    game = models.ForeignKey(Game, on_delete=models.CASCADE, verbose_name='Jogo')
    event_type = models.ForeignKey(EventType, on_delete=models.CASCADE, verbose_name='Tipo de evento')
    players = models.ManyToManyField(Player, through='game')
    period = models.ForeignKey(Period, on_delete=models.CASCADE, verbose_name='Período')
    time = models.CharField('Tempo', null=True, blank=True, max_length=50)

    created = models.DateTimeField('Criado', auto_now_add=True)
    modified = models.DateTimeField('Modificado', auto_now=True)

    class Meta:
        verbose_name='Evento'
        verbose_name_plural='Eventos'
        ordering=['-game']

    def __str__(self):
        return str(self.game) + ' ' + str(self.event_type) + ':' + str(self.players)
"""
