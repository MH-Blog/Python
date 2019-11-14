# organization/urls.py

from .views import OrgView, AddUserAskView

from django.urls import path, re_path

# 要写上app的名字
app_name = "organization"

urlpatterns = [
    path('list/', OrgView.as_view(), name='org_list'),
    path('add_ask/', AddUserAskView.as_view(), name="add_ask"),
]
