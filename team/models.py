from django.db import models
from autoslug import AutoSlugField

from core.models import Region, State, City

class TeamCategory (models.Model):
    name = models.CharField('Nome', max_length=255, unique=True)
    
    created = models.DateTimeField('Criado', auto_now_add=True)
    modified = models.DateTimeField('Modificado', auto_now=True)

    class Meta:
        verbose_name = 'Divisão do time'
        verbose_name_plural = '0. Divisões dos times'
        ordering = ['id', 'name']

    def __str__(self):
        return self.name


class SubTeam (models.Model):
    name = models.CharField('Nome', max_length=255, unique=True)
    
    created = models.DateTimeField('Criado', auto_now_add=True)
    modified = models.DateTimeField('Modificado', auto_now=True)

    class Meta:
        verbose_name = 'Especialidade'
        verbose_name_plural = '4. Especialidades'
        ordering = ['id', 'name']

    def __str__(self):
        return self.name

class Team (models.Model):

    name = models.CharField('Nome', max_length=255, unique=True)
    shortName = models.CharField('Nome abreviado', max_length=255)
    initials = models.CharField('Sigla', max_length=3)
    slug = AutoSlugField('Identificador', populate_from='name',
                         max_length=255, unique=True, always_update=True)
    logo = models.ImageField('Logo', upload_to='logos/', null=True, blank=True)
    category = models.ForeignKey(TeamCategory, 
                on_delete=models.CASCADE, null=True, blank=True, 
                verbose_name='Divisão')
    foundation = models.DateField('Data de fundação', null=True, blank=True)

    city = models.ForeignKey(
        City, on_delete=models.CASCADE, verbose_name='Cidade')

    facebook = models.URLField(
        'Facebook', max_length=255, null=True, blank=True)
    instagram = models.URLField(
        'Instagram', max_length=255, null=True, blank=True)

    primaryColor = models.CharField(
        'Cor primária', max_length=20, null=True, blank=True)
    secundaryColor = models.CharField(
        'Cor secundária', max_length=20, null=True, blank=True)
    terciaryColor = models.CharField(
        'Cor terciária', max_length=20, null=True, blank=True)

    created = models.DateTimeField('Criado', auto_now_add=True)
    modified = models.DateTimeField('Modificado', auto_now=True)

    class Meta:
        verbose_name = 'Time'
        verbose_name_plural = '1. Times'
        ordering = ['name']

    def __str__(self):
        return self.name


class Position (models.Model):
    name = models.CharField('Nome', max_length=100)
    initials = models.CharField('Sigla', max_length=10)

    class Meta:
        verbose_name = 'Posição'
        verbose_name_plural = '3. Posições'
        ordering = ['name']

    def __str__(self):
        return self.name


class Player (models.Model):

    name = models.CharField('Nome', max_length=255)
    nickname = models.CharField(
        'Apelido', max_length=255, null=True, blank=True)
    slug = AutoSlugField('Identificador', populate_from='name',
                         max_length=255, unique=True, always_update=True)
    photo = models.ImageField(
        'Foto', upload_to='players/photo/', null=True, blank=True)
    number = models.IntegerField('Número da camisa', null=True, blank=True)
    team = models.ForeignKey(
        Team, on_delete=models.CASCADE, verbose_name='Time', null=True, blank=True)
    position = models.ForeignKey(
        Position, on_delete=models.CASCADE, verbose_name='Posição', null=True, blank=True)
    height = models.DecimalField(
        'Altura', decimal_places=2, max_digits=4, null=True, blank=True)
    weight = models.DecimalField(
        'Peso', decimal_places=2, max_digits=5, null=True, blank=True)
    birthdate = models.DateField('Data de nascimento', null=True, blank=True)

    facebook = models.URLField(
        'Facebook', max_length=255, null=True, blank=True)
    instagram = models.URLField(
        'Instagram', max_length=255, null=True, blank=True)

    experience = models.DateField('Experiência', null=True, blank=True)

    created = models.DateTimeField('Criado', auto_now_add=True)
    modified = models.DateTimeField('Modificado', auto_now=True)

    class Meta:
        verbose_name = 'Jogador'
        verbose_name_plural = '2. Jogadores'
        ordering = ['name']

    def __str__(self):
        return self.name
