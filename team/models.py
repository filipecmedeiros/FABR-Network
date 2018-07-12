from django.db import models
from autoslug import AutoSlugField
from django.utils.text import slugify

from core.models import Region, State, City

# Create your models here.
class League (models.Model):

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

class LeagueEdition (models.Model):

	league = models.ForeignKey(League, on_delete=models.CASCADE, verbose_name='Liga') 
	year = models.DateField ('Ano', unique=True)
	slug = AutoSlugField('Identificador', populate_from='league', max_length=255, unique=True, always_update=True)

	created = models.DateTimeField('Criado', auto_now_add=True)
	modified = models.DateTimeField('Modificado', auto_now=True)

	def save(self, *args, **kwargs):
		'''
		Assuming that you don't have a slug field on your other model
		This will simply add the extra slug to your restaurant name.
		Personally, i would also add a slug field to the location table so you 
		simply call location.slug and don't have to slugify()
		'''
		self.slug += slugify(self.year.year)
		super(LeagueEdition, self).save(*args, **kwargs)

	class Meta:
		verbose_name='Edição de campeonato'
		verbose_name_plural='Edições de campeonatos'
		ordering=['year']

	def __str__(self):
		return str(self.league) + ' ' + str(self.year.year)

class Conference (models.Model):
	name = models.CharField('Conferência', max_length=255)
	league = models.ForeignKey(LeagueEdition, on_delete=models.CASCADE, verbose_name='Campeonato')

	created = models.DateTimeField('Criado', auto_now_add=True)
	modified = models.DateTimeField('Modificado', auto_now=True)

	class Meta:
		verbose_name='Conferência'
		verbose_name_plural='Conferências'
		ordering=['league', 'name']
	
	def __str__(self):
		return str(self.name) + ' - ' + str(self.league.league.shortName) + ' ' + str(self.league.year.year)

class Team (models.Model):

	name = models.CharField ('Nome', max_length=255, unique=True)
	shortName = models.CharField('Nome abreviado', max_length=255)
	initials = models.CharField('Sigla', max_length=3)
	slug = AutoSlugField('Identificador', populate_from='name', max_length=255, unique=True, always_update=True)
	logo = models.ImageField('Logo', upload_to='logos/', null=True, blank= True)
	foundation = models.DateField('Data de fundação', null=True, blank=True)

	state = models.ForeignKey(State, on_delete=models.CASCADE, verbose_name='Estado')
	city = models.ForeignKey(City, on_delete=models.CASCADE, verbose_name='Cidade')
	
	facebook = models.URLField('Facebook', max_length=255, null=True, blank=True)
	instagram = models.URLField('Instagram', max_length=255, null=True, blank=True)
	
	primaryColor = models.CharField('Cor primária', max_length=20, null=True, blank=True)
	secundaryColor = models.CharField('Cor secundária', max_length=20, null=True, blank=True)
	terciaryColor = models.CharField('Cor terciária', max_length=20, null=True, blank=True)

	created = models.DateTimeField('Criado', auto_now_add=True)
	modified = models.DateTimeField('Modificado', auto_now=True)

	class Meta:
		verbose_name='Time'
		verbose_name_plural='Times'
		ordering=['name']

	def __str__(self):
		return self.name

class Position (models.Model):
	name = models.CharField ('Nome', max_length=100)
	initials = models.CharField ('Sigla', max_length=10)

	class Meta:
		verbose_name='Posição'
		verbose_name_plural='Posições'
		ordering=['name']

	def __str__(self):
		return self.name

class Player (models.Model):

	name = models.CharField ('Nome', max_length=255)
	nickname = models.CharField('Apelido', max_length=255, null=True, blank=True)
	slug = AutoSlugField('Identificador', populate_from='name', max_length=255, unique=True, always_update=True)
	photo = models.ImageField('Foto', upload_to='players/photo/', null=True, blank= True)
	number = models.IntegerField ('Número da camisa', null=True, blank=True)
	team = models.ForeignKey(Team, on_delete=models.CASCADE, verbose_name='Time', null=True, blank=True)
	position = models.ForeignKey (Position, on_delete=models.CASCADE, verbose_name='Posição', null=True, blank=True)
	height = models.DecimalField ('Altura', decimal_places=2, max_digits=4, null=True, blank=True)
	weight = models.DecimalField ('Peso', decimal_places=2, max_digits=5, null=True, blank=True)
	birthdate = models.DateField('Data de nascimento', null=True, blank=True)
	
	hometown = models.ForeignKey(City, on_delete=models.CASCADE, verbose_name='Cidade natal')
	
	facebook = models.URLField('Facebook', max_length=255, null=True, blank=True)
	instagram = models.URLField('Instagram', max_length=255, null=True, blank=True)
	
	experience = models.DateField ('Experiência', null=True, blank=True)

	created = models.DateTimeField('Criado', auto_now_add=True)
	modified = models.DateTimeField('Modificado', auto_now=True)

	class Meta:
		verbose_name='Jogador'
		verbose_name_plural='Jogadores'
		ordering=['name']

	def __str__(self):
		return self.name

class Game (models.Model):
	conference = models.ForeignKey(Conference, on_delete=models.CASCADE, verbose_name='Conferência')
	teamA = models.ForeignKey(Team, related_name='teamA', on_delete=models.CASCADE, verbose_name='Time A')
	teamB = models.ForeignKey(Team, related_name='teamB', on_delete=models.CASCADE, verbose_name='Time B')
	scoreA = models.IntegerField('Pontuação do time A', null=True, blank=True)
	scoreB = models.IntegerField('Pontuação do time B', null=True, blank=True)
	week = models.IntegerField('Semana', null=True, blank=True)
	date = models.DateTimeField('Data e hora', null=True, blank=True)
	place = models.CharField('Local', max_length=900, null=True, blank=True)

	created = models.DateTimeField('Criado', auto_now_add=True)
	modified = models.DateTimeField('Modificado', auto_now=True)

	class Meta:
		verbose_name='Jogo'
		verbose_name_plural='Jogos'
		ordering=['conference', 'week', 'date']

	def __str__(self):
		return str(self.teamA) + ' x ' + str(self.teamB)