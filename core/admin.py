from django.contrib import admin
from .models import Region, State, City
from .models import Slide

# Register your models here.
class SlideAdmin (admin.ModelAdmin):
	list_display = ['id', 'description', 'subtitle', 'link']
	search_display = ['id', 'description', 'subtitle', 'link']
	list_filter = ['id', 'description', 'subtitle', 'link']
	search_fields = ['description', 'subtitle', 'link']

admin.site.register(Slide, SlideAdmin)

class RegionAdmin (admin.ModelAdmin):
    list_display = ['id', 'name']
    search_display = ['name']
    list_filter = ['name']

class StateAdmin (admin.ModelAdmin):
    list_display = ['code', 'name', 'uf', 'region']
    search_display = ['name', 'uf', 'region']
    list_filter = ['region']

class CityAdmin (admin.ModelAdmin):
    list_display = ['code', 'name', 'uf']
    search_display = ['name', 'uf']
    list_filter = ['uf']

admin.site.register(Region, RegionAdmin)
admin.site.register(State, StateAdmin)
admin.site.register(City, CityAdmin)