# -*- coding: utf-8 -*-
# @Time  : 2019/11/7 下午1:45
# @Author: MagicHuang
# @File  : urls.py
from django.urls import path
from home import api


urlpatterns=[
    path('',api.Hello)
]