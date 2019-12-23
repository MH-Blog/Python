# -*- coding: utf-8 -*-
# @Time  : 2019/12/19 下午6:45
# @Author: MagicHuang
# @File  : filters
import django_filters

from .models import Goods
from django.db.models import Q


class GoodsFilter(django_filters.rest_framework.FilterSet):
    '''
    商品过滤的类
    '''
    # 两个参数，name是要过滤的字段，lookup是执行的行为，‘小与等于本店价格’
    price_min = django_filters.NumberFilter(field_name="shop_price", lookup_expr='gte', help_text='最小价格')
    price_max = django_filters.NumberFilter(field_name="shop_price", lookup_expr='lte')
    top_category = django_filters.NumberFilter(field_name="category", method='top_category_filter')

    def top_category_filter(self, queryset, name, value):
        # 不管当前点击的是一级分类二级分类还是三级分类，都能找到。
        return queryset.filter(Q(category_id=value) | Q(category__parent_category_id=value) | Q(
            category__parent_category__parent_category_id=value))

    class Meta:
        model = Goods
        fields = ['price_min', 'price_max', 'is_hot', 'is_new']
