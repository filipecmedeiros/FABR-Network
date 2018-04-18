from django.db import models
from django.urls import reverse
from autoslug import AutoSlugField

from django.contrib.auth.models import User


# Create your models here.
class News (models.Model):

	author = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='Autor')
	date = models.DateTimeField('Data')
	title = models.CharField('Título', max_length=100)
	slug = AutoSlugField('Identificador', populate_from='title', max_length=255, unique=True)
	text = models.TextField('Texto')
	subtitle = models.CharField('Legenda', max_length=100)
	photo = models.ImageField('Foto', upload_to='news/%Y/%m/%d/',blank= True)

	created = models.DateTimeField('Criado em', auto_now_add=True)
	modified = models.DateTimeField('Modificado em', auto_now=True)


	class Meta:
		verbose_name='Notícia'
		verbose_name_plural='Notícias'
		ordering=['date']

	def __str__(self):
		return self.title

	def get_absolute_url (self):
		return reverse('news:news', kwargs={'slug':self.slug})