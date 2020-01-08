# Generated by Django 2.2.7 on 2020-01-02 02:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myApi', '0003_auto_20191229_1820'),
    ]

    operations = [
        migrations.AlterField(
            model_name='articlemodel',
            name='link',
            field=models.TextField(verbose_name='文章链接'),
        ),
        migrations.AlterField(
            model_name='linkmodel',
            name='link',
            field=models.TextField(verbose_name='网站链接'),
        ),
        migrations.AlterField(
            model_name='linkmodel',
            name='title',
            field=models.CharField(max_length=200, verbose_name='网站标题'),
        ),
    ]