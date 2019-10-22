from django.contrib import admin
import sys
from django.forms import CheckboxSelectMultiple
from .models import ChampionshipCategory, Championship, Season, Conference
from .models import Division, Campaign, Game, Round

# Register your models here.
class ChampionshipCategoryAdmin (admin.ModelAdmin):
    list_display = ['name', 'created', 'modified']
    search_display = ['name', 'created', 'modified']
    list_filter = ['name']
    search_fields = ['name']

    def get_actions(self, request):
        actions = super().get_actions(request)
        if 'delete_selected' in actions:
            del actions['delete_selected']
        return actions

    def has_delete_permission(self, request, obj=None):
        return False

admin.site.register(ChampionshipCategory, ChampionshipCategoryAdmin)

class ChampionshipAdmin (admin.ModelAdmin):
    list_display = ['name', 'shortName', 'category', 'created', 'modified']
    search_display = ['name', 'shortName', 'category', 'created', 'modified']
    list_filter = ['name', 'shortName', 'category', 'created', 'modified']
    search_fields = ['name', 'shortName', 'category__name']

    def get_actions(self, request):
        actions = super().get_actions(request)
        if 'delete_selected' in actions:
            del actions['delete_selected']
        return actions
admin.site.register(Championship, ChampionshipAdmin)


class SeasonAdmin (admin.ModelAdmin):
    list_display = ['__str__', 'created', 'modified']
    search_display = ['championship', 'year', 'created', 'modified']
    list_filter = ['championship', 'year', 'created', 'modified']
    search_fields = ['year', 'championship__name', 'championship__shortName']
    list_per_page = sys.maxsize

admin.site.register(Season, SeasonAdmin)


class ConferenceAdmin (admin.ModelAdmin):
    list_display = ['name', 'season', 'created', 'modified']
    search_display = ['name', 'season', 'created', 'modified']
    list_filter = ['name', 'season', 'weeks', 'created', 'modified']
    search_fields = ['name', 'season__year', 'season__championship__shortName', 
                    'season__championship__name']
    list_per_page = sys.maxsize

admin.site.register(Conference, ConferenceAdmin)


class DivisionAdmin (admin.ModelAdmin):
    list_display = ['name', 'conference', 'created', 'modified']
    search_display = ['name', 'conference', 'created', 'modified']
    list_filter = ['name', 'conference', 'created', 'modified']
    search_fields = ['name', 'conference__name', 'conference__season__championship__shortName',
                    'conference__season__year']
    list_per_page = sys.maxsize

    autocomplete_fields = ('teams', )
    """
    def formfield_for_manytomany(self, db_field, request=None, **kwargs):
        if db_field.name == 'teams':
            kwargs['widget'] = CheckboxSelectMultiple()

        return db_field.formfield(**kwargs)
    """

admin.site.register(Division, DivisionAdmin)


class CapaignAdmin (admin.ModelAdmin):
    list_display = ['division', 'team', 'victories',
                    'defeats', 'draws', 'atkPoints', 'dfPoints']
    search_display = ['division', 'team', 'victories',
                    'defeats', 'draws', 'atkPoints', 'dfPoints']
    list_filter = ['division', 'team']
    search_fields = ['team__name', 'division__name', 'division__conference__season__year',
                    'division__conference__season__championship__shortName']

admin.site.register(Campaign, CapaignAdmin)


class RoundAdmin (admin.ModelAdmin):
    list_display = ['phase', 'week', 'season', 'playoffs', 'slug']
    search_display = ['phase', 'week', 'season', 'playoffs']
    list_filter = ['phase', 'season', 'playoffs']
    search_fields = ['phase', 'week', 'season__championship__shortName',
                    'season__championship__name', 'season__year']

admin.site.register(Round, RoundAdmin)


class GameAdmin (admin.ModelAdmin):
    list_display = ['week', 'teamA', 'teamB', 'ended', 'created', 'modified']
    search_display = ['week', 'teamA', 'teamB', 'ended', 'created', 'modified']
    list_filter = ['week', 'created', 'modified']
    search_fields = ['week__week', 'teamA__name', 'teamB__name', 'teamA__shortName',
                    'teamB__shortName', 'week__season__championship__shortName',
                    'week__season__year']
    autocomplete_fields = ('teamA', 'teamB')

admin.site.register(Game, GameAdmin)
