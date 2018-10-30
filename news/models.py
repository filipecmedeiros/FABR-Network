from django.db import models
from django.urls import reverse
from autoslug import AutoSlugField

from django.contrib.auth.models import User
from team.models import Team
from championship.models import Championship, Season


# Create your models here.
class Tag (models.Model):
    name = models.CharField('Nome', primary_key=True, max_length=255)

    class Meta:
        ordering = ['name']
        verbose_name = 'Tag'
        verbose_name_plural = 'Tags'

    def __str__(self):
        return self.name


class News (models.Model):
    author = models.ForeignKey(
        User, on_delete=models.CASCADE, verbose_name='Autor')
    date = models.DateField('Data')
    title = models.CharField('Título', max_length=100)
    slug = AutoSlugField('Identificador', populate_from='title',
                         max_length=255, unique=True, always_update=True)
    text = models.TextField('Texto')
    subtitle = models.CharField('Legenda', max_length=100, blank=True)
    photo = models.ImageField('Foto', upload_to='news/%Y/%m/%d/', blank=True)

    tag = models.ManyToManyField(Tag, blank=True, verbose_name='Tag')
    teamTag = models.ManyToManyField(
        Team, blank=True, verbose_name='Tag de time')

    created = models.DateTimeField('Criado em', auto_now_add=True)
    modified = models.DateTimeField('Modificado em', auto_now=True)

    class Meta:
        verbose_name = 'Notícia'
        verbose_name_plural = 'Notícias'
        ordering = ['-date']

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('news:news', kwargs={'slug': self.slug})
