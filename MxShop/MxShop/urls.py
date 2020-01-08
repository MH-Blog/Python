"""MxShop URL Configuration

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
from django.views.generic import TemplateView

import xadmin
from django.urls import path, include, re_path
from django.views.static import serve
from MxShop.settings import MEDIA_ROOT
from rest_framework.documentation import include_docs_urls
from goods.views import GoodsListViewSet, CategoryViewSet, BannerViewSet, HotSearchsViewSet, IndexCategoryViewSet
from rest_framework.routers import DefaultRouter
from rest_framework_jwt.views import obtain_jwt_token

from trade.views import ShoppingCartViewSet
from user_operation.views import UserFavViewSet, LeavingMessageViewSet, AddressViewSet
from users.views import SmsCodeViewSet, UserViewSet

router = DefaultRouter()
# 配置goods的url
router.register('goods', GoodsListViewSet, base_name='goods')
# 配置商品目录的url
router.register('categorys', CategoryViewSet, base_name="categorys")
# 配置首页轮播图的url
router.register('banners', BannerViewSet, base_name="banners")
# 热搜词
router.register('hotsearchs', HotSearchsViewSet, base_name="hotsearchs")
# 首页系列商品展示url
router.register('indexgoods', IndexCategoryViewSet, base_name="indexgoods")
# 配置codes的url
router.register('code', SmsCodeViewSet, base_name="code")
# 配置用户的url
router.register('users', UserViewSet, base_name="users")
# 配置用户收藏的url
router.register('userfavs', UserFavViewSet, base_name="userfavs")
# 配置用户留言的url
router.register('messages', LeavingMessageViewSet, base_name="messages")
# 配置收货地址
router.register('address', AddressViewSet, base_name="address")
# 配置购物车的url
router.register('shopcarts', ShoppingCartViewSet, base_name="shopcarts")

urlpatterns = [
    path('xadmin/', xadmin.site.urls),
    path('api-auth/', include('rest_framework.urls')),
    path('ueditor/', include('DjangoUeditor.urls')),
    # 文件
    path('media/<path:path>', serve, {'document_root': MEDIA_ROOT}),
    # drf文档，title自定义
    path('docs/', include_docs_urls(title='幕学生鲜API')),
    # 首页
    path('index/', TemplateView.as_view(template_name='index.html'), name='index'),
    # 商品列表页
    re_path('^', include(router.urls)),
    # jwt的认证接口
    path('login/', obtain_jwt_token),
    # 第三方认证接口
    path('', include('social_django.urls', namespace='social'))
]
