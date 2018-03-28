from django.shortcuts import render
from django.views import generic

from .models import News

# Create your views here.
def news_list (request):
	return render (request, 'new_list.html')


def news (request, slug):
	new = News.objects.get(slug=slug)
	context={
		'new' : new,
	}
	return render (request, 'new.html', context)