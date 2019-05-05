from django.contrib import admin

from .models import Team, Position, Player, TeamCategory
from .forms import TeamForm

# Register your models here.
class TeamCategoryAdmin (admin.ModelAdmin):
    list_display = ['name', 'created', 'modified']
    search_display = ['name', 'created', 'modified']
    list_filter = ['name']

admin.site.register(TeamCategory, TeamCategoryAdmin)

class TeamAdmin (admin.ModelAdmin):
    form = TeamForm
    list_display = ['name', 'shortName', 'category', 'city',
                    'initials', 'created', 'modified']
    search_display = ['name', 'shortName',
                      'initials', 'city', 'created', 'modified']
    list_filter = ['created', 'modified']

admin.site.register(Team, TeamAdmin)

class PositionAdmin (admin.ModelAdmin):
    list_display = ['id', 'name', 'initials']
    search_display = ['name', 'initials']
    list_filter = ['name', 'initials']

admin.site.register(Position, PositionAdmin)

class PlayerAdmin (admin.ModelAdmin):
    list_display = ['name', 'nickname', 'number', 'team', 'position', 'created', 'modified']
    search_display = ['team', 'position', 'hometown', 'created', 'modified']
    list_filter = ['team', 'position', 'experience', 'created', 'modified']

admin.site.register(Player, PlayerAdmin)
