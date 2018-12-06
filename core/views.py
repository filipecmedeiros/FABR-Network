from django.shortcuts import render

from .models import Slide
from championship.models import Championship

# Create your views here.
def manutencao (request):
	return render (request, 'manutencao.html')

def index (request):
	context = {
		'slides':Slide.objects.all()[:3]
	}
	return render (request, 'home.html', context)

def compare (request):
	return render (request, 'compare.html')

def compacts(request):
	return render(request, 'compacts.html')

def contact(request):
	return render(request, 'contato.html')