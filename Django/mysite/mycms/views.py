from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib.auth import login, authenticate
from mycms.models import Userinfo
from myblog.models import Article
from myblog.forms import Article_Form

# Create your views here.


def index(request):
    if not isinstance(request.user, User):
        return redirect(to='myblog_index')

    userID = request.user
    userinfo = Userinfo.objects.get(belong=userID)

    context = {
        'userinfo': userinfo,
    }

    return render(request, 'mycms/index.html', context)


# 文章列表页
def list(request):
    if not isinstance(request.user, User):
        return redirect(to='myblog_index')
    userID = request.user
    userinfo = Userinfo.objects.get(belong=userID)
    article = Article.objects.all()
    context = {
        'userinfo': userinfo,
        'article': article
    }
    return render(request, 'mycms/list.html', context)


# 文章发布页
def fabu(request):
    if not isinstance(request.user, User):
        return redirect(to='myblog_index')
    userID = request.user
    userinfo = Userinfo.objects.get(belong=userID)
    if request.method == 'GET':
        form = Article_Form
    if request.method == 'POST':
        form = Article_Form
        title = request.POST['title']
        img = request.FILES['suolvetu']
        content = request.POST['content']
        new_article = Article(title=title, content=content, img=img)
        new_article.save()
        return redirect('/mycms/list')

    context = {
        'userinfo': userinfo,
        'form': form
    }
    return render(request, 'mycms/fabu.html', context)

# 删除文章


def article_delete(request, id):
    article = Article.objects.get(id=id)
    article.delete()
    return redirect('/mycms/list')

# 文章内容页


def article(request, id):
    if not isinstance(request.user, User):
        return redirect(to='myblog_index')
    # 获取文章
    article = Article.objects.get(id=id)

    userID = request.user
    userinfo = Userinfo.objects.get(belong=userID)

    if request.method == 'POST':
        title = request.POST['title']
        content = request.POST['content']
        try:
            img = request.FILES['suolvetu']
        except:
            img = article.img
        article.title = title
        article.img = img
        article.content = content
        article.save()
        return redirect('/mycms/list')

    context = {
        'userinfo': userinfo,
        'article': article
    }
    return render(request, 'mycms/article.html', context)
