# Generated by Django 2.2.7 on 2019-12-11 16:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('goods', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='goods',
            name='name',
            field=models.CharField(default='', max_length=100, verbose_name='商品名'),
        ),
    ]
