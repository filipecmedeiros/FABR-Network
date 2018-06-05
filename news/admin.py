from django.contrib import admin
from django_summernote.admin import SummernoteModelAdmin
from django.forms import TextInput
from django.db import models

# Register your models here.
from .models import News


class NewsAdmin (SummernoteModelAdmin):
	summernote_fields = '__all__'
	list_display = ['title', 'date', 'author', 'slug', 'created', 'modified']
	search_display = ['title', 'date', 'author', 'slug', 'created', 'modified']
	list_filter = ['date', 'author', 'created', 'modified']

	formfield_overrides = {
        models.CharField: {'widget': TextInput(attrs={'size':'58'})},
    }

admin.site.register(News, NewsAdmin)
