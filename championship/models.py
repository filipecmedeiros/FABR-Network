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
        verbose_name_plural = '1. Campeonatos'
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
        verbose_name_plural = '2. Temporadas'
        ordering = ['championship', '-year']

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
        verbose_name_plural = '3. Conferências'
        ordering = ['season', 'name']

    def __str__(self):
        return str(self.name) + ' da ' + str(self.season)


class Division (models.Model):
    name = models.CharField('Divisão', max_length=255)
    conference = models.ForeignKey(
        Conference, on_delete=models.CASCADE, verbose_name='Conferência')
    teams = models.ManyToManyField(
        Team, blank=True, through='Campaign', verbose_name='Times')
    playoffs = models.IntegerField('Classificados', null=True, blank=True)

    created = models.DateTimeField('Criado', auto_now_add=True)
    modified = models.DateTimeField('Modificado', auto_now=True)

    class Meta:
        verbose_name = 'Divisão'
        verbose_name_plural = '4. Divisões'
        ordering = ['conference', 'name']

    def __str__(self):
        return str(self.name) + ' - ' + str(self.conference)


class Campaign (models.Model):
    division = models.ForeignKey(
        Division, on_delete=models.CASCADE, verbose_name='Divisão')
    team = models.ForeignKey(
        Team, on_delete=models.CASCADE, verbose_name='Time')

    victories = models.IntegerField('Vitórias', default=0, null=True, blank=True)
    defeats = models.IntegerField('Derrotas', default=0, null=True, blank=True)
    draws = models.IntegerField('Empates', default=0, null=True, blank=True)
    atkPoints = models.IntegerField('Pontos feitos', default=0, null=True, blank=True)
    dfPoints = models.IntegerField('Pontos sofridos', default=0, null=True, blank=True)

    def __str__(self):
        return str(self.team)

    class Meta:
        auto_created = True
        verbose_name = 'Campanha'
        verbose_name_plural = '5. Campanhas'
        ordering = ['division', '-victories', '-draws',
                    'defeats', '-atkPoints', 'dfPoints']


class Round(models.Model):
    phase = models.CharField('Semana', max_length=255)
    week = models.CharField('Data', max_length=255, blank=True, null=True)
    season = models.ForeignKey(
        Season, on_delete=models.CASCADE, verbose_name='Temporada')

    class Meta:
        unique_together = (('phase', 'season'),)
        verbose_name = 'Rodada'
        verbose_name_plural = '6. Rodadas'
        ordering = ['season', 'phase', 'week']

    def __str__(self):
        return 'Rodada ' + str(self.phase) + ' da ' + str(self.season)


class Game (models.Model):
    teamA = models.ForeignKey(
        Team, related_name='teamA', on_delete=models.CASCADE, verbose_name='Time A')
    teamB = models.ForeignKey(
        Team, related_name='teamB', on_delete=models.CASCADE, verbose_name='Time B')
    date = models.DateTimeField('Data e hora', null=True, blank=True)
    place = models.ForeignKey(
        City, on_delete=models.CASCADE, null=True, blank=True, verbose_name='Local')
    week = models.ForeignKey(
        Round, on_delete=models.CASCADE, verbose_name='Rodada')
    ended = models.BooleanField('Finalizado')

    scoreA = models.IntegerField('Pontuação do time A', null=True, blank=True)
    scoreB = models.IntegerField('Pontuação do time B', null=True, blank=True)

    created = models.DateTimeField('Criado', auto_now_add=True)
    modified = models.DateTimeField('Modificado', auto_now=True)

    class Meta:
        verbose_name = 'Jogo'
        verbose_name_plural = '7. Jogos'
        ordering = ['week', '-date']

    def __str__(self):
        return str(self.date) + ':' + str(self.teamA) + ' x ' + str(self.teamB)

    def save(self, *args, **kwargs):
        
        # If the game exists previously, delete first
        game = Game.objects.filter(id=self.id)
        if (game.count()>0):
            game[0].delete()

        season = self.week.season

        divisionA = Division.objects.get(
            teams=self.teamA, conference__in=Conference.objects.filter(season=season))
        divisionB = Division.objects.get(
            teams=self.teamB, conference__in=Conference.objects.filter(season=season))

        campaignA = Campaign.objects.get(team=self.teamA, division=divisionA)
        campaignB = Campaign.objects.get(team=self.teamB, division=divisionB)

        if (self.scoreA > self.scoreB):
            campaignA.victories += 1
            campaignB.defeats += 1

        elif (self.scoreA < self.scoreB):
            campaignA.defeats += 1
            campaignB.victories += 1

        else:
            campaignA.draws += 1
            campaignB.draws += 1

        campaignA.atkPoints += self.scoreA
        campaignA.dfPoints -= self.scoreB

        campaignB.atkPoints += self.scoreB
        campaignB.dfPoints -= self.scoreA

        campaignA.save()
        campaignB.save()

        super(Game, self).save(*args, **kwargs)

    def delete(self, *args, **kwargs):
        super(Game, self).save(*args, **kwargs)
        season = self.week.season

        divisionA = Division.objects.get(
            teams=self.teamA, conference__in=Conference.objects.filter(season=season))
        divisionB = Division.objects.get(
            teams=self.teamB, conference__in=Conference.objects.filter(season=season))

        campaignA = Campaign.objects.get(team=self.teamA, division=divisionA)
        campaignB = Campaign.objects.get(team=self.teamB, division=divisionB)

        if (self.scoreA > self.scoreB):
            campaignA.victories -= 1
            campaignB.defeats -= 1

        elif (self.scoreA < self.scoreB):
            campaignA.defeats -= 1
            campaignB.victories -= 1

        else:
            campaignA.draws -= 1
            campaignB.draws -= 1

        campaignA.atkPoints -= self.scoreA
        campaignA.dfPoints += self.scoreB

        campaignB.atkPoints -= self.scoreB
        campaignB.dfPoints += self.scoreA

        campaignA.save()
        campaignB.save()        


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
