from django.shortcuts import render

from championship.models import Championship

# Create your views here.
def index (request):
	return render (request, 'home.html')

def compare (request):
	return render (request, 'compare.html')

def compacts(request):
	return render(request, 'compacts.html')

def contact(request):
	return render(request, 'contato.html')