from django.contrib.auth.models import AbstractUser
from django.db import models
from datetime import datetime


class VerifyCode(models.Model):
    code = models.CharField(max_length=20, verbose_name='验证码')
    email = models.CharField(max_length=50, verbose_name='邮箱')
    send_time = models.DateTimeField(default=datetime.now, verbose_name='发送时间')

    class Meta:
        verbose_name = '邮箱验证码'
        verbose_name_plural = verbose_name


# Create your models here.
class UserProfile(AbstractUser):
    """
    用户信息
    """
    GENDER_CHOICES = (
        ("male", u"男"),
        ("female", u"女")
    )
    nick_name = models.CharField("姓名", max_length=30, null=True, blank=True, default='')
    birthday = models.DateField("出生年月", null=True, blank=True)
    gender = models.CharField("性别", max_length=6, choices=GENDER_CHOICES, default="female")
    email = models.EmailField("邮箱", max_length=100, null=True, blank=True, unique=True, editable=False)
    desc = models.CharField(max_length=50, verbose_name='个性签名', default='人生苦短，我用Python', blank=True, null=True)

    class Meta:
        verbose_name = "用户信息"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.username
