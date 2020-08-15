"""djangoecommerce URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path, re_path

from . import views

app_name = 'team'

urlpatterns = [
    #Outros templates
    re_path(r'^$', views.teams, name='teams'),
    re_path(r'^divisao/(?P<slug>[\w_-]+)/$', views.teams_category, name='teams_category'),
    re_path(r'^compare/$', views.LikenView, name='liken'),
    re_path(r'^(?P<slug>[\w_-]+)/$', views.ScheduleListView, name='team'),
    re_path(r'^(?P<slug>[\w_-]+)/elenco/$', views.RosterView, name='roster'),
    re_path(r'^(?P<slug>[\w_-]+)/agenda/$', views.ScheduleListView, name='schedule'),
    re_path(r'^(?P<slug>[\w_-]+)/compactos/$', views.CompactListView, name='compact'),
    re_path(r'^(?P<slug>[\w_-]+)/campanhas/$', views.CampaignDatailView, name='campaign'),
    re_path(r'^(?P<slug>[\w_-]+)/instagram/$', views.InstagramDetailView, name='instagram'),
    re_path(r'^(?P<slug>[\w_-]+)/facebook/$', views.FacebookDetailView, name='facebook'),
    re_path(r'^(?P<slug>[\w_-]+)/historia/$', views.HistoryDetailView, name='history'),
    re_path(r'^(?P<slug>[\w_-]+)/(?P<playerSlug>[\w_-]+)/$', views.player, name='player'),
]
