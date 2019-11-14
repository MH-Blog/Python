from django.shortcuts import render

# Create your views here.
from django.views import View


class CourseListView(View):
    def get(self, request):
        return render(request, 'course-list.html')
