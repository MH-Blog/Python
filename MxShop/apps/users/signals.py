from django.db.models.signals import post_save
from django.dispatch import receiver
from django.contrib.auth import get_user_model

User = get_user_model()


@receiver(post_save, sender=User)
def create_user(sender, instance=None, created=False, **kwargs):
    if created:  # 首次创建才进行加密（修改的时候也会有save操作），其实有bug，出现在修改密码时
        password = instance.password
        instance.set_password(password)
        instance.save()