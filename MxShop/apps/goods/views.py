from rest_framework.response import Response
from rest_framework import mixins
from rest_framework import generics
from .models import Goods

from .serializer import GoodsSerializer


class GoodsListView(generics.ListAPIView):
    """
    商品列表页
    """
    queryset = Goods.objects.all()
    serializer_class = GoodsSerializer
