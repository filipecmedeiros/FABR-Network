from django.db import models

from django.contrib.auth.models import User


# Create your models here.
class News (models.Model):

	author = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='Autor')
	date = models.DateTimeField('Data')
	title = models.CharField('Título', max_length=100)
	slug = models.SlugField('Identificador', max_length=100)
	text = models.TextField('Texto')
	subtitle = models.CharField('Legenda', max_length=100)

	created = models.DateTimeField('Criado em', auto_now_add=True)
	modified = models.DateTimeField('Modificado em', auto_now=True)


	class Meta:
		verbose_name='Notícia'
		verbose_name_plural='Notícias'
		ordering=['date']

	def __str__(self):
		return self.title
