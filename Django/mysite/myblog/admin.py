from django.contrib import admin
from myblog.models import TopMenu
from myblog.models import Banner
from myblog.models import Article
from django_summernote.admin import SummernoteModelAdmin

class Article_summer(SummernoteModelAdmin):  # instead of ModelAdmin
    summernote_fields = 'content'

# Register your models here.
admin.site.register(TopMenu)
admin.site.register(Banner)
admin.site.register(Article,Article_summer)

