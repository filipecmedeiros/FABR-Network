from django.contrib import admin

from .models import League, LeagueEdition, Team, Position, Player, Conference, Game
from .forms import TeamForm

# Register your models here.
class LeagueAdmin (admin.ModelAdmin):
	list_display = ['name', 'shortName', 'created', 'modified']
	search_display = ['name', 'shortName', 'created', 'modified']
	list_filter = ['name', 'shortName', 'created', 'modified']	

class LeagueEditionAdmin (admin.ModelAdmin):
	list_display = ['league', 'year', 'created', 'modified']
	search_display = ['league', 'year', 'created', 'modified']
	list_filter = ['league', 'year', 'created', 'modified']

class ConferenceAdmin (admin.ModelAdmin):
	list_display = ['name', 'league', 'created', 'modified']
	search_display = ['name', 'league', 'created', 'modified']
	list_filter = ['name', 'league', 'created', 'modified']

class GameAdmin (admin.ModelAdmin):
	list_display = ['conference', 'teamA', 'teamB', 'week', 'created', 'modified']
	search_display = ['conference', 'teamA', 'teamB', 'week', 'created', 'modified']
	list_filter = ['conference', 'week', 'created', 'modified']

class TeamAdmin (admin.ModelAdmin):
	form = TeamForm
	list_display = ['name', 'shortName', 'initials', 'state', 'city', 'created', 'modified']
	search_display = ['name','shortName','initials','state','city', 'created', 'modified']
	list_filter = ['created', 'modified']	

class PositionAdmin (admin.ModelAdmin):
	list_display = ['name', 'initials']
	search_display = ['name', 'initials']
	list_filter = ['name', 'initials']

class PlayerAdmin (admin.ModelAdmin):
	list_display = ['name', 'nickname','number','team','position', 'created', 'modified']
	search_display = ['team', 'position', 'hometown', 'created', 'modified']
	list_filter = ['team', 'position', 'experience', 'created', 'modified']

admin.site.register(League, LeagueAdmin)
admin.site.register(LeagueEdition, LeagueEditionAdmin)
admin.site.register(Team, TeamAdmin)
admin.site.register(Position, PositionAdmin)
admin.site.register(Player, PlayerAdmin)
admin.site.register(Conference, ConferenceAdmin)
admin.site.register(Game, GameAdmin)
