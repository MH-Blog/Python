# -*- coding: utf-8 -*-
# @Time  : 2019/11/14 上午10:02
# @Author: MagicHuang
# @File  : urls.py
from django.urls import path, re_path
from .views import *
# 要写上app的名字
app_name = "courses"
urlpatterns = [
    path('list/', CourseListView.as_view(), name='course_list'),
]
