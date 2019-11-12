# -*- coding: utf-8 -*-
# @Time  : 2019/11/12 下午7:11
# @Author: MagicHuang
# @File  : urls.py
from django.urls import path
from .views import *

urlpatterns = [
    path('login/', LoginView.as_view(), name='login'),
    path('register/', RegisterView.as_view(), name='register'),

]
