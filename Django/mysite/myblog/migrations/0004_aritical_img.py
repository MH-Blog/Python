# Generated by Django 2.1.4 on 2019-04-26 03:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myblog', '0003_aritical'),
    ]

    operations = [
        migrations.AddField(
            model_name='aritical',
            name='img',
            field=models.ImageField(blank=True, null=True, upload_to=''),
        ),
    ]