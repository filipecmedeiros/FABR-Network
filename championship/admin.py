from django.contrib import admin
from django.forms import CheckboxSelectMultiple
from .models import Championship, Season, Conference, Division, Game, Round

# Register your models here.
class ChampionshipAdmin (admin.ModelAdmin):
	list_display = ['name','shortName', 'created', 'modified']
	search_display = ['name', 'shortName', 'created', 'modified']
	list_filter = ['name', 'shortName', 'created', 'modified']	

admin.site.register(Championship, ChampionshipAdmin)


class SeasonAdmin (admin.ModelAdmin):
	list_display = ['__str__', 'created', 'modified']
	search_display = ['championship', 'year', 'created', 'modified']
	list_filter = ['championship', 'year', 'created', 'modified']

admin.site.register(Season, SeasonAdmin)


class ConferenceAdmin (admin.ModelAdmin):
	list_display = ['name', 'season', 'created', 'modified']
	search_display = ['name', 'season', 'created', 'modified']
	list_filter = ['name', 'season', 'weeks', 'created', 'modified']

admin.site.register(Conference, ConferenceAdmin)


class DivisionAdmin (admin.ModelAdmin):
	list_display = ['name', 'conference', 'created', 'modified']
	search_display = ['name', 'conference', 'created', 'modified']
	list_filter = ['name', 'conference', 'created', 'modified']

	def formfield_for_manytomany(self, db_field, request=None, **kwargs):
		if db_field.name == 'teams':
			kwargs['widget'] = CheckboxSelectMultiple()

		return db_field.formfield(**kwargs)

admin.site.register(Division, DivisionAdmin)


class RoundAdmin (admin.ModelAdmin):
	list_display = ['week', 'season']
	search_display = ['week', 'season']
	list_filter = ['week', 'season']

admin.site.register(Round, RoundAdmin)


class GameAdmin (admin.ModelAdmin):
	list_display = ['week', 'teamA', 'teamB', 'created', 'modified']
	search_display = ['week', 'teamA', 'teamB', 'created', 'modified']
	list_filter = ['week', 'created', 'modified']

admin.site.register(Game, GameAdmin)

"""
class EventTypeAdmin (admin.ModelAdmin):

class PeriodAdmin (admin.ModelAdmin):

class EventAdmin (admin.ModelAdmin):
"""


