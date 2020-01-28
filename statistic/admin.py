from django.contrib import admin
from django.db.models import Q

from team.models import SubTeam, Player
from .models import EventType, Period, Event

# Register your models here.
class EventTypeAdmin (admin.ModelAdmin):
    list_display = ['team_category', 'name', 'points']
    search_display = ['team_category']
    list_filter = ['team_category']
    search_fields = ['team_category', 'name']

    """
    def get_actions(self, request):
        actions = super().get_actions(request)
        if 'delete_selected' in actions:
            del actions['delete_selected']
        return actions

    def has_delete_permission(self, request, obj=None):
        return False
    """

admin.site.register (EventType, EventTypeAdmin)


class PeriodAdmin (admin.ModelAdmin):
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

admin.site.register (Period, PeriodAdmin)

class EventAdmin (admin.ModelAdmin):
    list_display = ['game', 'ended', 'event_type', 'playerA', 'playerB']
    search_display = ['game', 'event_type', 'playerA', 'playerB', 'period']
    list_filter = ['game__week__season__championship__shortName', 'game__week', 'event_type']
    search_fields = ['game', 'event_type', 'playerA', 'playerB', 'period']

    autocomplete_fields = ('game', 'playerA', 'playerB')

    def ended(self, obj):
        return obj.game.ended
    ended.short_description = 'Finalizado'
    ended.admin_order_field = 'game__ended'
    ended.boolean = True


admin.site.register (Event, EventAdmin)
