from datetime import datetime
from django.db import models
from django.contrib.auth.models import AbstractUser
from django.contrib.auth import get_user_model

__all__ = ['ThingModel', 'ArticleModel', "LinkModel", 'TargetModel']

User = get_user_model()


class ThingModel(models.Model):
    """
    代办事项
    """
    LEVEL = (
        (1, '一般'),
        (2, '紧急')
    )
    title = models.CharField(verbose_name='事项名称', max_length=50)
    done = models.BooleanField(verbose_name='完成情况', default=False)
    level = models.IntegerField(verbose_name="紧急程度", choices=LEVEL, default=1)
    add_time = models.DateTimeField(verbose_name='添加时间', default=datetime.now)
    user = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name="用户")

    class Meta:
        verbose_name = "代办事项"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title


class ArticleModel(models.Model):
    """
    文章清单
    """
    title = models.CharField(verbose_name='文章标题', max_length=50)
    done = models.BooleanField(verbose_name='完成情况', default=False)
    link = models.CharField(verbose_name="文章链接", max_length=50)
    add_time = models.DateTimeField(verbose_name='添加时间', default=datetime.now)
    user = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name="用户")

    class Meta:
        verbose_name = "文章清单"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title


class LinkModel(models.Model):
    """
    网址导航
    """

    LINK_TYPE = (
        (1, '博客'),
        (2, '论坛'),
        (3, '资源')
    )
    title = models.CharField(verbose_name='网站标题', max_length=50)
    type = models.IntegerField(verbose_name="网站类型", choices=LINK_TYPE, default=1)
    link = models.CharField(verbose_name="网站链接", max_length=50)
    add_time = models.DateTimeField(verbose_name='添加时间', default=datetime.now)
    user = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name="用户")

    class Meta:
        verbose_name = "网址导航"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title


class TargetModel(models.Model):
    """
    个人目标
    """
    TARGET_TYPE = (
        (1, '周目标'),
        (2, '月目标'),
        (3, '年目标')
    )
    content = models.CharField(verbose_name='目标内容', max_length=50)
    type = models.IntegerField(verbose_name="目标类型", choices=TARGET_TYPE, default=1)
    add_time = models.DateTimeField(verbose_name='添加时间', default=datetime.now)
    user = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name="用户")

    class Meta:
        verbose_name = "个人目标"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.user.username
