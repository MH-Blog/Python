# Generated by Django 2.2 on 2020-01-19 14:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myApi', '0005_auto_20200102_0205'),
    ]

    operations = [
        migrations.AlterField(
            model_name='linkmodel',
            name='type',
            field=models.IntegerField(choices=[(1, '技术文档'), (2, '技术博客'), (3, '技术论坛')], default=1, verbose_name='网站类型'),
        ),
    ]
