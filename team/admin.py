from django.contrib import admin

from .models import Team, Position, Player
from .forms import TeamForm

# Register your models here.
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


admin.site.register(Team, TeamAdmin)
admin.site.register(Position, PositionAdmin)
admin.site.register(Player, PlayerAdmin)
