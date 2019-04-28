from django.urls import path
from mycms import views

urlpatterns =[
    path('',views.index),
    path('list/',views.list),
    path('article/<int:id>/',views.article),
    path('fabu/',views.fabu),
    path('delete/<int:id>/',views.article_delete,name='article_delete')
]
   