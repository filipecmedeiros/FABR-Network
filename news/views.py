from django.shortcuts import render
from django.views import generic

# Create your views here.
def news (request):
	return render (request, 'new.html')