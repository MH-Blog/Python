import xadmin
from .models import OrderGoods, ShoppingCart, OrderInfo


# Register your models here.

class ShoppingCartAdmin(object):
    model_icon = 'fa fa-shopping-cart'
    list_display = ["user", "goods", "nums"]


class OrderInfoAdmin(object):
    model_icon = 'fa fa-truck'
    list_display = ["user", "order_sn", "trade_no", "pay_status", "post_script", "order_mount",
                    "order_mount", "pay_time", "add_time"]

    class OrderGoodsInline(object):
        model = OrderGoods
        exclude = ['add_time', ]
        extra = 1
        style = 'tab'

    inlines = [OrderGoodsInline, ]


xadmin.site.register(ShoppingCart, ShoppingCartAdmin)
xadmin.site.register(OrderInfo, OrderInfoAdmin)
