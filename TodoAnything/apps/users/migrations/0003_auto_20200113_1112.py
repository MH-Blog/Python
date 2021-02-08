# Generated by Django 2.2 on 2020-01-13 11:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_verifycode'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='userprofile',
            name='mobile',
        ),
        migrations.AddField(
            model_name='userprofile',
            name='desc',
            field=models.CharField(blank=True, default='人生苦短，我用Python', max_length=50, null=True, verbose_name='个性签名'),
        ),
        migrations.AddField(
            model_name='userprofile',
            name='image',
            field=models.ImageField(blank=True, default='image/default.png', null=True, upload_to='image/%Y/%m'),
        ),
    ]