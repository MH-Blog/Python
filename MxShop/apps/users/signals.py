# @File  : signals.py
# @Author: Magic Huang
# @GitHub: github.com/MH-Blog
# @Date  : 2019/12/30


from django.db.models.signals import post_save
from django.dispatch import receiver

from django.contrib.auth import get_user_model

User = get_user_model()


# post_save:接收信号的方式
# sender: 接收信号的model
@receiver(post_save, sender=User)
def create_user(sender, instance=None, created=False, **kwargs):
    # 是否新建，因为update的时候也会进行post_save
    if not instance:
        password = instance.password
        # instance相当于user
        instance.set_password(password)
        instance.save()
    if created:
        password = instance.password
        # instance相当于user
        instance.set_password(password)
        instance.save()
