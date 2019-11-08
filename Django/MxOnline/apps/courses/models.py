from django.db import models

# Create your models here.
__all__ = ['']


class Course(models.Model):
    name = models.CharField(max_length=50, verbose_name='课程名')
    desc = models.CharField(max_length=300, verbose_name='课程描述')
    detail = models.TextField(verbose_name="课程详情")
    degree = models.CharField(choices=(('cj', '初级'), ("zj", '中级'), ("gj", "高级")), max_length=2, verbose_name='难度')
    learn_times = models.IntegerField(default=0, verbose_name='学习时长（分钟数）')

