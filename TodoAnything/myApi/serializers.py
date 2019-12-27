# -*- coding: utf-8 -*-
# @Time  : 2019/12/27 下午3:43
# @Author: MagicHuang
# @File  : serializers

from rest_framework import serializers
from .models import ThingModel, ArticleModel, LinkModel, TargetModel


class ThingSerializer(serializers.ModelSerializer):
    class Meta:
        model = ThingModel
        fields = "__all__"


class ArticleSerializer(serializers.ModelSerializer):
    class Meta:
        model = ArticleModel
        fields = "__all__"


class LinkSerializer(serializers.ModelSerializer):
    class Meta:
        model = LinkModel
        fields = "__all__"


class TargetSerializer(serializers.ModelSerializer):
    class Meta:
        model = TargetModel
        fields = "__all__"
