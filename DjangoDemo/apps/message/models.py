# -*- coding: utf-8 -*-
from django.db import models

__all__ = ["UserMessage"]


# Create your models here.
class UserMessage(models.Model):
    name = models.CharField(max_length=20, null=True, blank=True, default='', verbose_name='用户名')
    email = models.EmailField(verbose_name='邮箱', null=True, blank=True, default='')
    address = models.CharField(max_length=100, verbose_name='地址', null=True, blank=True, default='')
    message = models.CharField(max_length=500, verbose_name='留言内容', null=True, blank=True, default='')

    class Meta:
        verbose_name = '留言信息'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name
