from django.contrib import admin

# Register your models here.
from .models import News, Category


class NewsAdmin (admin.ModelAdmin):
	list_display = ['title', 'date', 'author', 'slug', 'category', 'created', 'modified']
	search_display = ['title', 'date', 'author', 'slug', 'category', 'created', 'modified']
	list_filter = ['category', 'date', 'author', 'created', 'modified']


class CategoryAdmin (admin.ModelAdmin):
	list_display = ['name', 'slug', 'created', 'modified']
	search_display = ['name', 'slug', 'created', 'modified']
	list_filter = ['created', 'modified']

admin.site.register(News, NewsAdmin)
admin.site.register(Category, CategoryAdmin)
