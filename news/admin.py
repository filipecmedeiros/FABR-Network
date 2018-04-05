from django.contrib import admin
from django_summernote.admin import SummernoteModelAdmin

# Register your models here.
from .models import News


class NewsAdmin (SummernoteModelAdmin):
	summernote_fields = '__all__'
	list_display = ['title', 'date', 'author', 'slug', 'created', 'modified']
	search_display = ['title', 'date', 'author', 'slug', 'created', 'modified']
	list_filter = ['date', 'author', 'created', 'modified']

admin.site.register(News, NewsAdmin)
