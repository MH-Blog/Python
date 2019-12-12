# -*- coding: utf-8 -*-
# @Time  : 2019/11/21 上午8:50
# @Author: MagicHuang
# @File  : serializers.py
from rest_framework import serializers
from .models import Goods, GoodsCategory


class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = GoodsCategory
        fields = '__all__'


class GoodsSerializer(serializers.ModelSerializer):
    category = CategorySerializer()

    class Meta:
        model = Goods
        fields = '__all__'
