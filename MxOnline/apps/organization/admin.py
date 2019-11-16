# -*- coding: utf-8 -*-
# @Time  : 2019/11/11 下午2:26
# @Author: MagicHuang
# @File  : adminx.py

from django.contrib import admin

from .models import CityDict, CourseOrg, Teacher


class CityDictAdmin(admin.ModelAdmin):
    '''城市'''

    list_display = ['name', 'desc', 'add_time']
    search_fields = ['name', 'desc']
    list_filter = ['name', 'desc', 'add_time']
    # data_charts = {
    #     "city_dict": {'title': "City Dict", "x-field": "add_time", "y-field": ("name",),
    #                   "order": ('add_time',)},
    #
    # }


class CourseOrgAdmin(admin.ModelAdmin):
    '''机构'''

    list_display = ['name', 'desc', 'click_nums', 'fav_nums', 'add_time']
    search_fields = ['name', 'desc', 'click_nums', 'fav_nums']
    list_filter = ['name', 'desc', 'click_nums', 'fav_nums', 'city__name', 'address', 'add_time']


class TeacherAdmin(admin.ModelAdmin):
    '''老师'''

    list_display = ['name', 'org', 'work_years', 'work_company', 'add_time']
    search_fields = ['org', 'name', 'work_years', 'work_company']
    list_filter = ['org__name', 'name', 'work_years', 'work_company', 'click_nums', 'fav_nums', 'add_time']


admin.site.register(CityDict, CityDictAdmin)
admin.site.register(CourseOrg, CourseOrgAdmin)
admin.site.register(Teacher, TeacherAdmin)
