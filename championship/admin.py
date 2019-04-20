from django.contrib import admin
from django.forms import CheckboxSelectMultiple
from .models import ChampionshipCategory, Championship, Season, Conference
from .models import Division, Campaign, Game, Round

# Register your models here.
class ChampionshipCategoryAdmin (admin.ModelAdmin):
    list_display = ['name', 'created', 'modified']
    search_display = ['name', 'created', 'modified']
    list_filter = ['name']
    search_fields = ['name']

admin.site.register(ChampionshipCategory, ChampionshipCategoryAdmin)

class ChampionshipAdmin (admin.ModelAdmin):
    list_display = ['name', 'shortName', 'category', 'created', 'modified']
    search_display = ['name', 'shortName', 'category', 'created', 'modified']
    list_filter = ['name', 'shortName', 'category', 'created', 'modified']
    search_fields = ['name', 'shortName', 'category']

admin.site.register(Championship, ChampionshipAdmin)


class SeasonAdmin (admin.ModelAdmin):
    list_display = ['__str__', 'created', 'modified']
    search_display = ['championship', 'year', 'created', 'modified']
    list_filter = ['championship', 'year', 'created', 'modified']
    search_fields = ['year']

admin.site.register(Season, SeasonAdmin)


class ConferenceAdmin (admin.ModelAdmin):
    list_display = ['name', 'season', 'created', 'modified']
    search_display = ['name', 'season', 'created', 'modified']
    list_filter = ['name', 'season', 'weeks', 'created', 'modified']
    search_fields = ['name']

admin.site.register(Conference, ConferenceAdmin)


class DivisionAdmin (admin.ModelAdmin):
    list_display = ['name', 'conference', 'created', 'modified']
    search_display = ['name', 'conference', 'created', 'modified']
    list_filter = ['name', 'conference', 'created', 'modified']
    search_fields = ['name']

    def formfield_for_manytomany(self, db_field, request=None, **kwargs):
        if db_field.name == 'teams':
            kwargs['widget'] = CheckboxSelectMultiple()

        return db_field.formfield(**kwargs)

admin.site.register(Division, DivisionAdmin)


class CapaignAdmin (admin.ModelAdmin):
    list_display = ['division', 'team', 'victories',
                    'defeats', 'draws', 'atkPoints', 'dfPoints']
    search_display = ['division', 'team', 'victories',
                    'defeats', 'draws', 'atkPoints', 'dfPoints']
    list_filter = ['division', 'team']
    search_fields = ['team']

admin.site.register(Campaign, CapaignAdmin)


class RoundAdmin (admin.ModelAdmin):
    list_display = ['phase', 'week', 'season', 'slug']
    search_display = ['phase', 'week', 'season']
    list_filter = ['phase', 'season']
    search_fields = ['phase', 'week']

admin.site.register(Round, RoundAdmin)


class GameAdmin (admin.ModelAdmin):
    list_display = ['week', 'teamA', 'teamB', 'created', 'modified']
    search_display = ['week', 'teamA', 'teamB', 'created', 'modified']
    list_filter = ['week', 'created', 'modified']
    search_fields = ['week']

admin.site.register(Game, GameAdmin)

"""
class EventTypeAdmin (admin.ModelAdmin):

class PeriodAdmin (admin.ModelAdmin):

class EventAdmin (admin.ModelAdmin):
"""
