# Generated by Django 2.2.7 on 2019-11-09 15:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_auto_20191109_1542'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pagebanner',
            name='image',
            field=models.ImageField(blank=True, default='', null=True, upload_to='banner/%Y/%m', verbose_name='轮播图'),
        ),
        migrations.AlterField(
            model_name='userprofile',
            name='avatar',
            field=models.ImageField(blank=True, default='avatar/default.png', null=True, upload_to='avatar/%Y/%m'),
        ),
    ]
