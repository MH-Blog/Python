from django.contrib import admin

# Register your models here.
import xadmin
from .models import Goods, GoodsCategory, GoodsImage, GoodsCategoryBrand, Banner, HotSearchWords
from .models import IndexAd


class GoodsAdmin(object):
    model_icon = 'fa fa-book'


class GoodsCategoryAdmin(object):
    model_icon = 'fa fa-book'


xadmin.site.register(Goods, GoodsAdmin)
xadmin.site.register(GoodsCategory,GoodsCategoryAdmin)
