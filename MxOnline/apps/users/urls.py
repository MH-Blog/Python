# -*- coding: utf-8 -*-
# @Time  : 2019/11/12 下午7:11
# @Author: MagicHuang
# @File  : urls.py
from django.urls import path, re_path
from .views import *

# 要写上app的名字
app_name = "users"

urlpatterns = [
    path('login/', LoginView.as_view(), name='login'),
    path('logout/', LogoutView.as_view(), name="logout"),
    path('register/', RegisterView.as_view(), name='register'),
    re_path('active/(?P<active_code>.*)/', ActiveUserView.as_view(), name='user_active'),
    path('forget/', ForgetPwdView.as_view(), name='forget_pwd'),
    re_path('reset/(?P<active_code>.*)/', ResetView.as_view(), name='reset_pwd'),
    path('modify_pwd/', ModifyPwdView.as_view(), name='modify_pwd'),
    # 用户信息
    path("info/", UserinfoView.as_view(), name='user_info'),
    # 用户图像上传
    path("image/upload/", UploadImageView.as_view(), name='image_upload'),
    # 用户个人中心修改密码
    path("update/pwd/", UpdatePwdView.as_view(), name='update_pwd'),
    # 发送邮箱验证码
    path("sendemail_code/", SendEmailCodeView.as_view(), name='sendemail_code'),
    # 修改邮箱
    path("update_email/", UpdateEmailView.as_view(), name='update_email'),
    # 我的课程
    path("mycourse/", MyCourseView.as_view(), name='mycourse'),
    # 我的收藏--课程机构
    path('myfav/org/', MyFavOrgView.as_view(), name="myfav_org"),
    # 我的收藏--授课讲师
    path('myfav/teacher/', MyFavTeacherView.as_view(), name="myfav_teacher"),
    # 我的收藏--课程
    path('myfav/course/', MyFavCourseView.as_view(), name="myfav_course"),
    # 我的消息
    path('my_message/', MyMessageView.as_view(), name="my_message"),
]
