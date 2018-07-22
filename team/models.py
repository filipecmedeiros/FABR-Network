from django.db import models
from autoslug import AutoSlugField

from core.models import Nationality, Region, State, City

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
	
	nationality = models.ForeignKey(Nationality, on_delete=models.CASCADE, default=1, null=True, blank=True, verbose_name='Nacionalidade')
	
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