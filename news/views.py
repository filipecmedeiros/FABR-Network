from django.shortcuts import render
from django.views import generic

from .models import News

class NewsListView (generic.ListView):
	queryset = News.objects.all()
	model = News
	template_name = 'new_list.html'
	context_object_name = 'news'

news_list = NewsListView.as_view()

def news (request, slug):
	new = News.objects.get(slug=slug)
	context={
		'new' : new,
	}
	return render (request, 'new.html', context)