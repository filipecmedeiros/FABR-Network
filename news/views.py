from django.shortcuts import render
from django.views import generic

from .models import News

class NewsListView (generic.ListView):
	queryset = News.objects.all().reverse()
	model = News
	template_name = 'new_list.html'
	context_object_name = 'news'

news_list = NewsListView.as_view()

def news (request, slug):
	new = News.objects.get(slug=slug)
	read_more = News.objects.all().reverse()[:3]
	context={
		'new' : new,
		'read_more': read_more
	}
	return render (request, 'new.html', context)