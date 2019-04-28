from rest_framework import serializers
from rest_framework.response import Response
from rest_framework.decorators import api_view
# 用户管理
from django.contrib.auth.models import User
from django.contrib.auth import login,authenticate

from myblog.models import TopMenu
from myblog.models import Banner



class TopMenuXuLieHua(serializers.ModelSerializer):
    class Meta:
        depth = 1
        model = TopMenu
        fields = '__all__'


class BannerData(serializers.ModelSerializer):
    class Meta:
        depth = 1
        model = Banner
        fields = ['img']


@api_view(['GET','POST'])
def indexData(request):
        # 首页导航栏数据
    topmenu = TopMenu.objects.all()
    topmenuData = TopMenuXuLieHua(topmenu, many=True)

    # 首页的Banner
    banner = Banner.objects.all()
    bannerData = BannerData(banner, many=True)

    # 记录用户登录信息
    userID = request.user.id
    loginType ='no'
    if userID != None:
        loginType = 'ok'

    # 登录方法
    if request.method == 'POST':
        # 获取 post 过来的信息
        username=request.POST['username']
        password=request.POST['password']
        # 这些信息是否通过了 User login验证方式
        user=authenticate(username=username,password=password)
        if user != None:
            login(request,user)
            loginType = 'ok'
            return Response({'loginType':loginType})
        else:
            return Response({'loginType':loginType})
    
    #返回的数据信息 
    jsonData = {'topmenu': topmenuData.data, 'banner': bannerData.data,'loginType':loginType}
    return Response(jsonData)
