# users/adminx.py

import xadmin

from .models import EmailVerifyRecord, Banner
from xadmin import views


# 创建xadmin的最基本管理器配置，并与view绑定
class BaseSettings(object):
    enable_themes = True  # 使用主题功能
    use_bootswatch = True


# 全局修改，固定写法
class GlobalSettings(object):
    # 修改title
    site_title = '幕学在线教育'
    # 修改footer
    site_footer = 'Copyright © 2019 Powered by 神奇的老黄 All Rights Reserved'
    # 收起菜单
    menu_style = 'accordion'


# xadmin中这里是继承object，不再是继承admin
class EmailVerifyRecordAdmin(object):
    # 显示的列
    list_display = ['code', 'email', 'send_type', 'send_time']
    # 搜索的字段
    search_fields = ['code', 'email', 'send_type']
    # 过滤
    list_filter = ['code', 'email', 'send_type', 'send_time']


class BannerAdmin(object):
    list_display = ['title', 'image', 'url', 'index', 'add_time']
    search_fields = ['title', 'image', 'url', 'index']
    list_filter = ['title', 'image', 'url', 'index', 'add_time']


xadmin.site.register(EmailVerifyRecord, EmailVerifyRecordAdmin)
xadmin.site.register(Banner, BannerAdmin)

# 将基本配置管理与view绑定
xadmin.site.register(views.BaseAdminView, BaseSettings)

# 将title和footer信息进行注册
xadmin.site.register(views.CommAdminView, GlobalSettings)
