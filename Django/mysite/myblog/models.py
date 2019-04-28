from django.db import models

# Create your models here.


class TopMenu(models.Model):
    title = models.CharField(default='', blank=True, null=True, max_length=20)
    url = models.CharField(default='', blank=True, null=True, max_length=20)

    def __str__(self):
        return self.title


class Banner(models.Model):
    img = models.ImageField(blank=True, null=True)

    def __int__(self):
        return self.id


class Article(models.Model):
    img = models.ImageField(blank=True, null=True)
    title = models.CharField(default='', blank=True, null=True, max_length=100)
    content = models.TextField(blank=True, null=True)
    createtime=models.DateField(auto_now=True)
    def __str__(self):
        return self.title
