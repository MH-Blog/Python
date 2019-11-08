from django.shortcuts import render
from .models import UserMessage


# Create your views here.
def getform(request):
    # 取出所有数据
    all_message = UserMessage.objects.all()
    if all_message:
        message = all_message[0]
    # 取出指定数据
    # one_message = UserMessage.objects.filter(name='黄志伟')

    if request.method == 'POST':
        data = request.POST
        user_message = UserMessage()
        user_message.name = data['name']
        user_message.email = data['email']
        user_message.address = data['address']
        user_message.message = data['message']
        user_message.save()

    return render(request, 'message_form.html', {'message': message})
