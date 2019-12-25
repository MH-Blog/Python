# -*- coding: utf-8 -*-
# @Time  : 2019/12/25 上午11:34
# @Author: MagicHuang
# @File  : yunpian

import json
import requests
from MxShop.settings import APIKEY


class YunPian(object):

    def __init__(self):
        self.api_key = APIKEY
        self.single_send_url = "https://sms.yunpian.com/v2/sms/single_send.json"

    def send_sms(self, code, mobile):
        # 需要传递的参数
        parmas = {
            "apikey": self.api_key,
            "mobile": mobile,
            "text": "【柠檬不够酸】您的验证码是{code}。如非本人操作，请忽略本短信".format(code=code)
        }

        response = requests.post(self.single_send_url, data=parmas)
        re_dict = json.loads(response.text)
        return re_dict
