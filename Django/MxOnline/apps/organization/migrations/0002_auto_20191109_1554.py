# Generated by Django 2.2.7 on 2019-11-09 15:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('organization', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='courseorg',
            name='image',
            field=models.ImageField(blank=True, default='', null=True, upload_to='org/%Y/%m', verbose_name='logo'),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='avatar',
            field=models.ImageField(blank=True, default='', null=True, upload_to='teacher/%Y/%m', verbose_name='头像'),
        ),
    ]
