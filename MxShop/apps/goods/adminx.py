from django.contrib import admin

# Register your models here.
import xadmin
from .models import Goods, GoodsCategory, GoodsImage, GoodsCategoryBrand, Banner, HotSearchWords
from .models import IndexAd


class GoodsAdmin(object):
    model_icon = 'fa fa-book'


class GoodsCategoryAdmin(object):
    model_icon = 'fa fa-book'
    list_display = ["name", "category_type", "parent_category", "add_time"]
    list_filter = ["category_type", "parent_category", "name"]
    search_fields = ['name']


class GoodsBrandAdmin(object):
    list_display = ["category", "image", "name", "desc"]

    # 重载默认get_context方法
    def get_context(self):
        context = super(GoodsBrandAdmin, self).get_context()
        # if 'form' in context固定写法
        if 'form' in context:
            # fields['category']，只取这个外键（分类），  category_type=1只取分类的大类
            context['form'].fields['category'].queryset = GoodsCategory.objects.filter(category_type=1)
        return context


class BannerGoodsAdmin(object):
    list_display = ["goods", "image", "index"]


class HotSearchAdmin(object):
    list_display = ["keywords", "index", "add_time"]


class IndexAdAdmin(object):
    list_display = ["category", "goods"]


xadmin.site.register(Goods, GoodsAdmin)
xadmin.site.register(GoodsCategory, GoodsCategoryAdmin)
xadmin.site.register(Banner, BannerGoodsAdmin)
xadmin.site.register(GoodsCategoryBrand, GoodsBrandAdmin)

xadmin.site.register(HotSearchWords, HotSearchAdmin)
xadmin.site.register(IndexAd, IndexAdAdmin)
