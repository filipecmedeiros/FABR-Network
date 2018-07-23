from django.contrib import admin
from django.forms import CheckboxSelectMultiple
from .models import Championship, Season, Phase, Conference, Division, Game, Round

# Register your models here.
class ChampionshipAdmin (admin.ModelAdmin):
	list_display = ['name','shortName', 'created', 'modified']
	search_display = ['name', 'shortName', 'created', 'modified']
	list_filter = ['name', 'shortName', 'created', 'modified']	

class SeasonAdmin (admin.ModelAdmin):
	list_display = ['__str__', 'created', 'modified']
	search_display = ['championship', 'year', 'created', 'modified']
	list_filter = ['championship', 'year', 'created', 'modified']

	def formfield_for_manytomany(self, db_field, request=None, **kwargs):
		if db_field.name == 'teams':
			kwargs['widget'] = CheckboxSelectMultiple()

		return db_field.formfield(**kwargs)

class PhaseAdmin (admin.ModelAdmin):
	list_display = ['name']
	search_display = ['name']
	list_filter = ['name']

class ConferenceAdmin (admin.ModelAdmin):
	list_display = ['name', 'season', 'weeks', 'created', 'modified']
	search_display = ['name', 'season', 'weeks', 'created', 'modified']
	list_filter = ['name', 'season', 'weeks', 'created', 'modified']

	def formfield_for_manytomany(self, db_field, request=None, **kwargs):
		if db_field.name == 'teams':
			kwargs['widget'] = CheckboxSelectMultiple()

		return db_field.formfield(**kwargs)

class DivisionAdmin (admin.ModelAdmin):
	list_display = ['name', 'conference', 'created', 'modified']
	search_display = ['name', 'conference', 'created', 'modified']
	list_filter = ['name', 'conference', 'created', 'modified']

	def formfield_for_manytomany(self, db_field, request=None, **kwargs):
		if db_field.name == 'teams':
			kwargs['widget'] = CheckboxSelectMultiple()

		return db_field.formfield(**kwargs)

class GameAdmin (admin.ModelAdmin):
	list_display = ['conference', 'teamA', 'teamB', 'week', 'created', 'modified']
	search_display = ['conference', 'teamA', 'teamB', 'week', 'created', 'modified']
	list_filter = ['conference', 'week', 'created', 'modified']

class RoundAdmin (admin.ModelAdmin):
	list_display = ['__str__', 'season', 'phase', 'week']
	search_display = ['__str__', 'season', 'phase', 'week']
	list_filter = ['season', 'phase', 'week']

admin.site.register(Championship, ChampionshipAdmin)
admin.site.register(Season, SeasonAdmin)
admin.site.register(Phase, PhaseAdmin)
admin.site.register(Conference, ConferenceAdmin)
admin.site.register(Division, DivisionAdmin)
admin.site.register(Game, GameAdmin)
admin.site.register(Round, RoundAdmin)