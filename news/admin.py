from django.contrib import admin
from django_summernote.admin import SummernoteModelAdmin
from django.forms import TextInput
from django.db import models

# Register your models here.
from .models import News, Tag

class TagAdmin (admin.ModelAdmin):
	list_display = ['name']
	list_filter = ['name']
	search_display = ['name']
	search_fields = ['name']

admin.site.register(Tag, TagAdmin)


class NewsAdmin (SummernoteModelAdmin):
	summernote_fields = '__all__'
	list_display = ['title', 'date', 'author', 'slug', 'created', 'modified']
	search_display = ['title', 'date', 'author', 'slug', 'tag', 'created', 'modified']
	list_filter = ['date', 'author', 'created', 'modified']
	search_fields = ['title', 'author', 'tag']

	formfield_overrides = {
        models.CharField: {'widget': TextInput(attrs={'size':'58'})},
    }

admin.site.register(News, NewsAdmin)
