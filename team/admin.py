from django.contrib import admin
import sys

from .models import Team, Position, Player, TeamCategory, SubTeam
from .forms import TeamForm

# Register your models here.
class TeamCategoryAdmin (admin.ModelAdmin):
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

admin.site.register(TeamCategory, TeamCategoryAdmin)

class TeamAdmin (admin.ModelAdmin):
    form = TeamForm
    list_display = ['name', 'shortName', 'category', 'city',
                    'initials', 'created', 'modified']
    search_display = ['name', 'shortName',
                      'initials', 'city', 'created', 'modified']
    list_filter = ['created', 'modified']
    search_fields = ['name', 'shortName', 'category__name', 'city__name', 'initials']
    list_per_page = sys.maxsize

admin.site.register(Team, TeamAdmin)

class PositionAdmin (admin.ModelAdmin):
    list_display = ['id', 'name', 'initials']
    search_display = ['name', 'initials']
    list_filter = ['name', 'initials']
    search_fields = ['name', 'initials']
    list_per_page = sys.maxsize

admin.site.register(Position, PositionAdmin)

class PlayerAdmin (admin.ModelAdmin):
    list_display = ['name', 'nickname', 'number', 'team', 'position', 'created', 'modified']
    search_display = ['team', 'position', 'hometown', 'created', 'modified']
    list_filter = ['team', 'position', 'experience', 'created', 'modified']
    search_fields = ['name', 'nickname', 'number', 'team__name', 'position__name']

admin.site.register(Player, PlayerAdmin)


class SubTeamAdmin(admin.ModelAdmin):
    list_display = ['name']
    search_display = ['name']
    list_filter = ['name']
    search_fields = ['name']

    def get_actions(self, request):
        actions = super().get_actions(request)
        if 'delete_selected' in actions:
            del actions['delete_selected']
        return actions

    def has_delete_permission(self, request, obj=None):
        return False


admin.site.register (SubTeam, SubTeamAdmin)