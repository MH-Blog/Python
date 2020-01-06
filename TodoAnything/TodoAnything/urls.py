"""TodoAnything URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
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
from django.contrib import admin

from rest_framework.routers import DefaultRouter
from rest_framework.authtoken import views
from rest_framework_jwt.views import obtain_jwt_token
from django.urls import path, include, re_path
from django.views.static import serve
from TodoAnything.settings import STATICFILES_ROOT

from myApi.views import ThingViewSet, ArticleViewSet, LinkViewSet, TargetViewSet

router = DefaultRouter()
# 配置代办事项的url
router.register('thing', ThingViewSet,basename='thing')
# 配置文章清单的url
router.register('article', ArticleViewSet,basename='article')
# 配置网址导航的url
router.register('link', LinkViewSet,basename='link')
# 配置个人中心的url
router.register('user', TargetViewSet,basename='user')

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api-auth/', include('rest_framework.urls')),
    re_path('^', include(router.urls)),
    # token
    path('api-token-auth/', views.obtain_auth_token),
    # jwt的认证接口
    path('login/', obtain_jwt_token),
    re_path('static/(?P<path>.*)', serve, {"document_root": STATICFILES_ROOT}),
]

