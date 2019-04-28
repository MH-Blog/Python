from django.db import models
from django.contrib.auth.models import User

# Create your models here.
# 用户拓展资料


class Userinfo(models.Model):
    nickname = models.CharField(null=True, blank=True, max_length=20)
    avaimg = models.ImageField(null=True, blank=True)
    belong = models.ForeignKey(
        User, on_delete=models.CASCADE, blank=True, null=True, related_name='userinfo')

    def __str__(self):
        return self.nickname
