"""MxOnline URL Configuration

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
from django.urls import path, include, re_path
from django.views.defaults import page_not_found
from django.views.static import serve
from MxOnline.settings import MEDIA_ROOT, STATICFILES_ROOT
import xadmin
from users.views import IndexView, page_error


admin.autodiscover()

urlpatterns = [
    path('admin/', admin.site.urls),
    path('xadmin/', xadmin.site.urls),
    path('', IndexView.as_view(), name='index'),
    # 处理图片显示的url,使用Django自带serve,传入参数告诉它去哪个路径找，我们有配置好的路径MEDIAROOT
    re_path('media/(?P<path>.*)', serve, {"document_root": MEDIA_ROOT}),
    re_path('static/(?P<path>.*)', serve, {"document_root": STATICFILES_ROOT}),
    path('captcha/', include('captcha.urls')),
    # 个人信息
    path("users/", include('users.urls', namespace='users')),
    # 课程机构app相关url配置
    path("org/", include('organization.urls', namespace="org")),
    # 课程app相关url配置
    path("course/", include('courses.urls', namespace="course")),
    # 富文本相关url
    path('ueditor/', include('DjangoUeditor.urls')),
]

# # 全局404页面配置
handler404 = page_not_found
# # 全局500页面配置
handler500 = page_error
