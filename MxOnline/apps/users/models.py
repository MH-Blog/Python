from datetime import datetime
from django.db import models
from django.contrib.auth.models import AbstractUser


# Create your models here.


# 用户信息
class UserProfile(AbstractUser):
    nick_name = models.CharField(max_length=50, verbose_name='昵称', default='', blank=True, null=True)
    birthday = models.DateField(verbose_name='生日', blank=True, null=True)
    gender = models.CharField(choices=(('male', '男'), ('female', '女')), default='male', max_length=6)
    address = models.CharField(max_length=100, verbose_name='地址', default='', blank=True, null=True)
    mobile = models.CharField(max_length=11, verbose_name='手机号', default='', blank=True, null=True)
    image = models.ImageField(upload_to='image/%Y/%m', default='image/default.png', null=True, blank=True)
    add_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')
    desc = models.CharField(max_length=50, verbose_name='个性签名', default='人生苦短，我用Python', blank=True, null=True)

    class Meta:
        verbose_name = '用户信息'
        verbose_name_plural = verbose_name

    def __str__(self):
        if self.nick_name:
            # 如果不为空则返回用户名
            return self.nick_name
        else:
            # 如果用户名为空则返回不能为空的对象
            return self.username


# 邮箱验证码
class EmailVerifyRecord(models.Model):
    send_choices = (
        ('register', '注册'),
        ('forget', '找回密码'),
        ('update_email', '修改邮箱')
    )
    code = models.CharField(max_length=20, verbose_name='验证码')
    email = models.CharField(max_length=50, verbose_name='邮箱')
    send_type = models.CharField(max_length=30, verbose_name='邮箱', choices=send_choices)
    send_time = models.DateTimeField(default=datetime.now, verbose_name='发送时间')
    is_valid = models.BooleanField('是否有效', default=True)

    class Meta:
        verbose_name = '邮箱验证码'
        verbose_name_plural = verbose_name


# 轮播图
class Banner(models.Model):
    title = models.CharField(max_length=100, verbose_name='标题', default='', null=True, blank=True)
    image = models.ImageField(upload_to='banner/%Y/%m', default='', verbose_name='轮播图', null=True, blank=True)
    url = models.URLField(max_length=200, verbose_name='访问地址')
    index = models.IntegerField(default=100, verbose_name="图片顺序")
    add_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')

    class Meta:
        verbose_name = "轮播图"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title
