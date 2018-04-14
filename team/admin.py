from django.contrib import admin

from .models import League, LeagueEdition, Team, Position, Player

# Register your models here.
class LeagueAdmin (admin.ModelAdmin):
	list_display = ['name', 'region', 'created', 'modified']
	search_display = ['name', 'region', 'created', 'modified']
	list_filter = ['name', 'region', 'created', 'modified']	

class LeagueEditionAdmin (admin.ModelAdmin):
	list_display = ['league', 'year', 'created', 'modified']
	search_display = ['league', 'year', 'created', 'modified']
	list_filter = ['league', 'year', 'created', 'modified']

class TeamAdmin (admin.ModelAdmin):
	list_display = ['name', 'shortName', 'initials', 'city', 'state', 'created', 'modified']
	search_display = ['name','shortName','initials','city','state', 'created', 'modified']
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