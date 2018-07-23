from django.db import models
from autoslug import AutoSlugField
from django.utils.text import slugify
from django.forms import CheckboxSelectMultiple
import datetime

from core.models import Nationality, Region, State, City
from team.models import Team, Position, Player
# Create your models here.
YEAR_CHOICES = []
for r in range(2000, (datetime.datetime.now().year+3)):
    YEAR_CHOICES.append((r,r))

# Create your models here.
class Championship (models.Model):

	name = models.CharField ('Nome', max_length=100, unique=True)
	shortName = models.CharField('Sigla', max_length=10, unique=True)
	logo = models.ImageField('Logo', upload_to='logos/', null=True, blank= True)

	primaryColor = models.CharField('Cor primária', max_length=20, null=True, blank=True)
	secundaryColor = models.CharField('Cor secundária', max_length=20, null=True, blank=True)
	terciaryColor = models.CharField('Cor terciária', max_length=20, null=True, blank=True)

	facebook = models.URLField('Facebook', max_length=255, null=True, blank=True)
	instagram = models.URLField('Instagram', max_length=255, null=True, blank=True)

	created = models.DateTimeField('Criado', auto_now_add=True)
	modified = models.DateTimeField('Modificado', auto_now=True)

	class Meta:
		verbose_name='Campeonato'
		verbose_name_plural='Campeonatos'
		ordering=['name']

	def __str__(self):
		return self.name

class Season (models.Model):

	championship = models.ForeignKey(Championship, on_delete=models.CASCADE, verbose_name='Campeonato')
	year = models.IntegerField('Ano', choices=YEAR_CHOICES, default=datetime.datetime.now().year, null=True, blank=True)
	teams = models.ManyToManyField(Team, blank=True, verbose_name='Times')
	slug = AutoSlugField('Identificador', populate_from='championship', max_length=255, unique=True, always_update=True)

	created = models.DateTimeField('Criado', auto_now_add=True)
	modified = models.DateTimeField('Modificado', auto_now=True)
	
	def save(self, *args, **kwargs):
		self.slug += slugify(self.year)
		super(Season, self).save(*args, **kwargs)

	class Meta:
		verbose_name='Temporada'
		verbose_name_plural='Temporadas'
		ordering=['championship']

	def __str__(self):
		return str(self.championship.shortName) + ' ' + str(self.year)

class Phase (models.Model):
	
	name = models.CharField('Fase', max_length=255)

	class Meta:
		verbose_name='Fase'
		verbose_name_plural='Fases'
		ordering=['name']

	def __str__(self):
		return self.name

class Conference (models.Model):

	name = models.CharField('Conferência', max_length=255)
	season = models.ForeignKey(Season, on_delete=models.CASCADE, verbose_name='Temporada')
	teams = models.ManyToManyField(Team, blank=True, verbose_name='Times')
	weeks = models.IntegerField('Semanas', null=True, blank=True)
	created = models.DateTimeField('Criado', auto_now_add=True)
	modified = models.DateTimeField('Modificado', auto_now=True)

	class Meta:
		verbose_name='Conferência'
		verbose_name_plural='Conferências'
		ordering=['season', 'name']
	
	def __str__(self):
		return str(self.name) + ' da ' + str(self.season)

class Division (models.Model):
	name = models.CharField('Divisão', max_length=255)
	conference = models.ForeignKey(Conference, on_delete=models.CASCADE, verbose_name='Conferência')
	teams = models.ManyToManyField(Team, blank=True, verbose_name='Times')
	playoffs = models.IntegerField('Classificados', null=True, blank=True)

	created = models.DateTimeField('Criado', auto_now_add=True)
	modified = models.DateTimeField('Modificado', auto_now=True)

	class Meta:
		verbose_name='Divisão'
		verbose_name_plural='Divisões'
		ordering=['conference', 'name']
	
	def __str__(self):
		return str(self.name) + ' - ' + str(self.conference.season.championship.shortName) + ' ' + str(self.conference.season.year)


class Game (models.Model):
	conference = models.ForeignKey(Conference, on_delete=models.CASCADE, verbose_name='Conferência')
	teamA = models.ForeignKey(Team, related_name='teamA', on_delete=models.CASCADE, verbose_name='Time A')
	teamB = models.ForeignKey(Team, related_name='teamB', on_delete=models.CASCADE, verbose_name='Time B')
	week = models.IntegerField('Semana', null=True, blank=True)
	date = models.DateTimeField('Data e hora', null=True, blank=True)
	place = models.CharField('Local', max_length=900, null=True, blank=True)

	scoreA = models.IntegerField('Pontuação do time A', null=True, blank=True)
	scoreB = models.IntegerField('Pontuação do time B', null=True, blank=True)

	created = models.DateTimeField('Criado', auto_now_add=True)
	modified = models.DateTimeField('Modificado', auto_now=True)

	class Meta:
		verbose_name='Jogo'
		verbose_name_plural='Jogos'
		ordering=['conference', 'week', 'date']

	def __str__(self):
		return str(self.teamA) + ' x ' + str(self.teamB) + ' ' + str(self.week)

class Round(models.Model):
	season = models.ForeignKey(Season, on_delete=models.CASCADE, verbose_name='Temporada')
	phase = models.ForeignKey(Phase, on_delete=models.CASCADE, verbose_name='Fase')
	week = models.IntegerField('Semana')
	games = models.ManyToManyField(Game, blank=True, verbose_name='Jogos')

	class Meta:
		verbose_name='Rodada'
		verbose_name_plural='Rodadas'
		ordering=['season', 'phase', 'week']

	def __str__(self):
		return 'Rodada ' + str(self.week)

"""
class ScoreType(models.Model):
	name = models.CharField('Tipo', max_length=255)

	class Meta:
		verbose_name='Pontuação'
		verbose_name_plural='Pontuações'
		ordering=['name']

	def __str__(self):
		return str(self.name)


class Scorers (models.Model):
	game = models.ForeignKey(Game, on_delete=models.CASCADE, verbose_name='Jogo')
	scorers = models.ManyToManyField(Player, through=[self.game.teamA, self.game.teamB])

	class Meta:
		verbose_name='Pontuação'
		verbose_name_plural='Pontuadores'
		ordering=['name']

	def __str__(self):
		return str(self.name)
"""