from django.contrib import admin
from django.forms import CheckboxSelectMultiple
from .models import Championship, Season, Phase, Conference, Division, Game

# Register your models here.
class ChampionshipAdmin (admin.ModelAdmin):
	list_display = ['name', 'shortName', 'created', 'modified']
	search_display = ['name', 'shortName', 'created', 'modified']
	list_filter = ['name', 'shortName', 'created', 'modified']	

class SeasonAdmin (admin.ModelAdmin):
	list_display = ['championship', 'year', 'created', 'modified']
	search_display = ['championship', 'year', 'created', 'modified']
	list_filter = ['championship', 'year', 'created', 'modified']

	def formfield_for_manytomany(self, db_field, request=None, **kwargs):
		if db_field.name == 'teams':
			kwargs['widget'] = CheckboxSelectMultiple()
			kwargs['help_text'] = ''

		return db_field.formfield(**kwargs)

class PhaseAdmin (admin.ModelAdmin):
	list_display = ['name']
	search_display = ['name']
	list_filter = ['name']

class ConferenceAdmin (admin.ModelAdmin):
	list_display = ['name', 'championship', 'weeks', 'created', 'modified']
	search_display = ['name', 'championship', 'weeks', 'created', 'modified']
	list_filter = ['name', 'championship', 'weeks', 'created', 'modified']

class DivisionAdmin (admin.ModelAdmin):
	list_display = ['name', 'conference', 'created', 'modified']
	search_display = ['name', 'conference', 'created', 'modified']
	list_filter = ['name', 'conference', 'created', 'modified']

class GameAdmin (admin.ModelAdmin):
	list_display = ['conference', 'teamA', 'teamB', 'week', 'created', 'modified']
	search_display = ['conference', 'teamA', 'teamB', 'week', 'created', 'modified']
	list_filter = ['conference', 'week', 'created', 'modified']

admin.site.register(Championship, ChampionshipAdmin)
admin.site.register(Season, SeasonAdmin)
admin.site.register(Phase, PhaseAdmin)
admin.site.register(Conference, ConferenceAdmin)
admin.site.register(Division, DivisionAdmin)
admin.site.register(Game, GameAdmin)