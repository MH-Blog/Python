from rest_framework import viewsets
from .models import ThingModel, ArticleModel, LinkModel, TargetModel
from .serializers import ThingSerializer, ArticleSerializer, LinkSerializer, TargetSerializer


# Create your views here.
class ThingViewSet(viewsets.ModelViewSet):
    serializer_class = ThingSerializer

    # 获取当前用户的代办事项信息
    def get_queryset(self):
        return ThingModel.objects.filter(user=self.request.user)


class ArticleViewSet(viewsets.ModelViewSet):
    serializer_class = ArticleSerializer

    # 获取当前用户的文章清单信息
    def get_queryset(self):
        return ArticleModel.objects.filter(user=self.request.user)


class LinkViewSet(viewsets.ModelViewSet):
    serializer_class = LinkSerializer

    # 获取当前用户的网址导航信息
    def get_queryset(self):
        return LinkModel.objects.filter(user=self.request.user)


class TargetViewSet(viewsets.ModelViewSet):
    serializer_class = TargetSerializer

    # 获取当前用户的个人目标信息
    def get_queryset(self):
        return TargetModel.objects.filter(user=self.request.user)
