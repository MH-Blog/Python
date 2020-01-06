# -*- coding: utf-8 -*-
# @Time  : 2019/12/27 下午3:43
# @Author: MagicHuang
# @File  : serializers

from rest_framework import serializers
from .models import ThingModel, ArticleModel, LinkModel, TargetModel


class ThingSerializer(serializers.ModelSerializer):
    # 获取当前登录的用户
    user = serializers.HiddenField(
        default=serializers.CurrentUserDefault()
    )

    def update(self, instance, validated_data):
        instance.done = not validated_data["done"]
        instance.save()
        return instance

    class Meta:
        model = ThingModel
        fields = "__all__"


class ArticleSerializer(serializers.ModelSerializer):
    # 获取当前登录的用户
    user = serializers.HiddenField(
        default=serializers.CurrentUserDefault()
    )

    def update(self, instance, validated_data):
        instance.done = not validated_data["done"]
        instance.save()
        return instance

    class Meta:
        model = ArticleModel
        fields = "__all__"


class LinkSerializer(serializers.ModelSerializer):
    # 获取当前登录的用户
    user = serializers.HiddenField(
        default=serializers.CurrentUserDefault()
    )

    class Meta:
        model = LinkModel
        fields = "__all__"


class TargetSerializer(serializers.ModelSerializer):
    # 获取当前登录的用户
    user = serializers.HiddenField(
        default=serializers.CurrentUserDefault()
    )

    class Meta:
        model = TargetModel
        fields = "__all__"
