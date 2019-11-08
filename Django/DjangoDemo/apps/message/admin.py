from django.contrib import admin
from . import models

# Register your models here.
for table in models.__all__:
    admin.site.register(getattr(models, table))
