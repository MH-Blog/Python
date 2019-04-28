from django.shortcuts import render
from .models import TopMenu, Article
from django.contrib.auth.models import User
# Create your views here.


def index(request):
    topmenu = TopMenu.objects.all()
    article = Article.objects.all()
    context = {
        'topmenu': topmenu,
        'article':article
    }
    return render(request, 'myblog/index.html', context)
