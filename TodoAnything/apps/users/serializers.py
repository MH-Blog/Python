# @File  : serializers.py
# @Author: Magic Huang
# @GitHub: github.com/MH-Blog
# @Date  : 2020/1/2


import re
from datetime import datetime, timedelta
from TodoAnything.settings import REGEX_EMAIL
from users.models import VerifyCode
from rest_framework import serializers
from rest_framework.validators import UniqueValidator
from django.contrib.auth import get_user_model

User = get_user_model()


class VerifyCodeSerializer(serializers.Serializer):
    '''
    邮箱验证码
    '''
    email = serializers.CharField(max_length=30)

    # 函数名必须：validate + 验证字段名
    def validate_email(self, email):
        """
        手机号码验证
        """
        # 是否已经注册
        if User.objects.filter(email=email).count():
            raise serializers.ValidationError("用户已经存在")

        # 是否合法
        if not re.match(REGEX_EMAIL, email):
            raise serializers.ValidationError("邮箱格式不正确")

        # 验证码发送频率
        # 60s内只能发送一次
        one_mintes_ago = datetime.now() - timedelta(hours=0, minutes=1, seconds=0)
        if VerifyCode.objects.filter(send_time__gt=one_mintes_ago, email=email).count():
            raise serializers.ValidationError("距离上一次发送未超过60s")

        return email


class UserDetailSerializer(serializers.ModelSerializer):
    """
    用户详情
    """

    class Meta:
        model = User
        fields = ["nick_name", "gender", "email", "desc"]


class UserRegSerializer(serializers.ModelSerializer):
    '''
    用户注册
    '''
    # UserProfile中没有code字段，这里需要自定义一个code字段
    code = serializers.CharField(required=True, write_only=True, max_length=4, min_length=4, label='验证码',
                                 error_messages={
                                     "blank": "请输入验证码",
                                     "required": "请输入验证码",
                                     "max_length": "验证码格式错误",
                                     "min_length": "验证码格式错误"
                                 },
                                 help_text="验证码")
    # 验证用户名是否存在
    username = serializers.CharField(label="用户名", help_text="用户名", required=True, allow_blank=False,
                                     validators=[UniqueValidator(queryset=User.objects.all(), message="用户已经存在")])
    # 输入密码的时候不显示明文
    password = serializers.CharField(
        style={'input_type': 'password'}, label='密码', write_only=True
    )

    # 验证code
    def validate_code(self, code):
        # 用户注册，已post方式提交注册信息，post的数据都保存在initial_data里面
        # username就是用户注册的手机号，验证码按添加时间倒序排序，为了后面验证过期，错误等
        verify_records = VerifyCode.objects.filter(email=self.initial_data["username"]).order_by("-send_time")

        if verify_records:
            # 最近的一个验证码
            last_record = verify_records[0]
            # 有效期为十分钟。
            ten_mintes_ago = datetime.now() - timedelta(hours=0, minutes=10
                                                        , seconds=0)
            if ten_mintes_ago > last_record.send_time:
                raise serializers.ValidationError("验证码过期")

            if last_record.code != code:
                raise serializers.ValidationError("验证码错误")

        else:
            raise serializers.ValidationError("验证码错误")

        # 所有字段。attrs是字段验证合法之后返回的总的dict

    def validate(self, attrs):
        # 前端没有传email值到后端，这里添加进来
        attrs["email"] = attrs["username"]
        # 设置邮箱为默认昵称
        attrs["nick_name"] = attrs["username"]
        # code是自己添加得，数据库中并没有这个字段，验证完就删除掉
        del attrs["code"]
        return attrs

    class Meta:
        model = User
        fields = ('username', 'code', 'password')
