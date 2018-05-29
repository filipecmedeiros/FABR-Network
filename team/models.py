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
		return str(self.league) + str(self.year)

class Team (models.Model):

	name = models.CharField ('Nome', max_length=255)
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