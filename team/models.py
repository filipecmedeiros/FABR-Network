from django.db import models
from autoslug import AutoSlugField
from django.utils.text import slugify

# Create your models here.
class League (models.Model):

	name = models.CharField ('Nome', max_length=100, unique=True)
	shortName = models.CharField('Sigla', max_length=10, unique=True)
	region = models.CharField('Região', max_length=100)

	created = models.DateTimeField('Criado', auto_now_add=True)
	modified = models.DateTimeField('Modificado', auto_now=True)

	class Meta:
		verbose_name='Liga'
		verbose_name_plural='Ligas'
		ordering=['name']

	def __str__(self):
		return self.name

class LeagueEdition (models.Model):

	league = models.ForeignKey(League, on_delete=models.CASCADE, verbose_name='Liga') 
	year = models.DateField ('Ano', unique=True)
	slug = AutoSlugField('Identificador', populate_from='league', max_length=255, unique=True)

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
		verbose_name='Edição de liga'
		verbose_name_plural='Edição de ligas'
		ordering=['year']

	def __str__(self):
		return str(self.league) + str(self.year)

class Team (models.Model):

	name = models.CharField ('Nome', max_length=255)
	shortName = models.CharField('Nome abreviado', max_length=255)
	initials = models.CharField('Sigla', max_length=3)
	city = models.CharField('Cidade', max_length=255)
	state = models.CharField('Estado', max_length=255)
	foundation = models.DateField('Data de fundação', blank=True)
	facebook = models.CharField('Facebook', max_length=255, blank=True)
	instagram = models.CharField('Instagram', max_length=255, blank=True)
	primaryColor = models.CharField('Cor primária', max_length=20, blank=True)
	secundaryColor = models.CharField('Cor secundária', max_length=20, blank=True)
	logo = models.ImageField('Logo', upload_to='logos/',blank= True)

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
	nickname = models.CharField('Apelido', max_length=255, blank=True)
	photo = models.ImageField('Foto', upload_to='players/photo/',blank= True)
	number = models.IntegerField ('Número da camisa', blank=True)
	team = models.ForeignKey(Team, on_delete=models.CASCADE, verbose_name='Time', blank=True)
	position = models.ForeignKey (Position, on_delete=models.CASCADE, verbose_name='Posição', blank=True)
	height = models.DecimalField ('Altura', decimal_places=2, max_digits=4, blank=True)
	birthdate = models.DateField('Data de nascimento', blank=True)
	hometown = models.CharField('Cidade natal', max_length=255, blank=True)
	facebook = models.CharField('Facebook', max_length=255, blank=True)
	instagram = models.CharField('Instagram', max_length=255, blank=True)
	experience = models.DateField ('Experiência', blank=True)

	created = models.DateTimeField('Criado', auto_now_add=True)
	modified = models.DateTimeField('Modificado', auto_now=True)

	class Meta:
		verbose_name='Jogador'
		verbose_name_plural='Jogadores'
		ordering=['name']

	def __str__(self):
		return self.name