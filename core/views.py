from django.shortcuts import render

# Create your views here.
def index (request):
	return render (request, 'manutencao.html')

def compacts(request):
	return render(request, 'compacts.html')

def contact(request):
	return render(request, 'contato.html')