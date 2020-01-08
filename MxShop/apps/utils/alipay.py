# @File  : alipay.py
# @Author: Magic Huang
# @GitHub: github.com/MH-Blog
# @Date  : 2019/12/30




import json
from datetime import datetime
from Crypto.PublicKey import RSA
from Crypto.Signature import PKCS1_v1_5
from Crypto.Hash import SHA256
from base64 import b64encode, b64decode
from urllib.parse import quote_plus
from urllib.parse import urlparse, parse_qs
from urllib.request import urlopen
from base64 import decodebytes, encodebytes


class AliPay(object):
    """
    支付宝支付接口
    """
    def __init__(self, appid, app_notify_url, app_private_key_path,
                 alipay_public_key_path, return_url, debug=False):
        self.appid = appid
        self.app_notify_url = app_notify_url
        #私钥
        self.app_private_key_path = app_private_key_path
        self.app_private_key = None
        self.return_url = return_url
        with open(self.app_private_key_path) as fp:
            self.app_private_key = RSA.importKey(fp.read())
        #公钥
        self.alipay_public_key_path = alipay_public_key_path
        with open(self.alipay_public_key_path) as fp:
            self.alipay_public_key = RSA.import_key(fp.read())


        if debug is True:
            self.__gateway = "https://openapi.alipaydev.com/gateway.do"
        else:
            self.__gateway = "https://openapi.alipay.com/gateway.do"

    def direct_pay(self, subject, out_trade_no, total_amount, return_url=None, **kwargs):
        #请求参数
        biz_content = {
            "subject": subject,
            "out_trade_no": out_trade_no,
            "total_amount": total_amount,
            "product_code": "FAST_INSTANT_TRADE_PAY",
            # "qr_pay_mode":4
        }
        #允许传递更多参数，放到biz_content
        biz_content.update(kwargs)
        data = self.build_body("alipay.trade.page.pay", biz_content, self.return_url)
        return self.sign_data(data)

    def build_body(self, method, biz_content, return_url=None):
        #build_body主要生产消息的格式
        #公共请求参数
        data = {
            "app_id": self.appid,
            "method": method,
            "charset": "utf-8",
            "sign_type": "RSA2",
            "timestamp": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
            "version": "1.0",
            "biz_content": biz_content
        }

        if return_url is not None:
            data["notify_url"] = self.app_notify_url
            data["return_url"] = self.return_url

        return data

    def sign_data(self, data):
        #签名
        data.pop("sign", None)
        # 排序后的字符串
        unsigned_items = self.ordered_data(data)
        #排完序后拼接起来
        unsigned_string = "&".join("{0}={1}".format(k, v) for k, v in unsigned_items)
        #这里得到签名的字符串
        sign = self.sign(unsigned_string.encode("utf-8"))
        #对url进行处理
        quoted_string = "&".join("{0}={1}".format(k, quote_plus(v)) for k, v in unsigned_items)

        # 获得最终的订单信息字符串
        signed_string = quoted_string + "&sign=" + quote_plus(sign)
        return signed_string

    #参数传进来一定要排序
    def ordered_data(self, data):
        complex_keys = []
        for key, value in data.items():
            if isinstance(value, dict):
                complex_keys.append(key)

        # 将字典类型的数据dump出来
        for key in complex_keys:
            data[key] = json.dumps(data[key], separators=(',', ':'))

        return sorted([(k, v) for k, v in data.items()])

    def sign(self, unsigned_string):
        # 开始计算签名
        key = self.app_private_key
        #签名的对象
        signer = PKCS1_v1_5.new(key)
        #生成签名
        signature = signer.sign(SHA256.new(unsigned_string))
        # base64 编码，转换为unicode表示并移除回车
        sign = encodebytes(signature).decode("utf8").replace("\n", "")
        return sign

    def _verify(self, raw_content, signature):
        # 开始计算签名
        key = self.alipay_public_key
        signer = PKCS1_v1_5.new(key)
        digest = SHA256.new()
        digest.update(raw_content.encode("utf8"))
        if signer.verify(digest, decodebytes(signature.encode("utf8"))):
            return True
        return False

    def verify(self, data, signature):
        if "sign_type" in data:
            sign_type = data.pop("sign_type")
        # 排序后的字符串
        unsigned_items = self.ordered_data(data)
        message = "&".join(u"{}={}".format(k, v) for k, v in unsigned_items)
        return self._verify(message, signature)


if __name__ == "__main__":
    return_url = ""
    o = urlparse(return_url)
    query = parse_qs(o.query)
    processed_query = {}
    ali_sign = query.pop("sign")[0]


# # 测试用例
#     alipay = AliPay(
#         # 沙箱里面的appid值
#         appid="2016091500517456",
#         #notify_url是异步的url
#         app_notify_url="http://47.93.198.159:8000/alipay/return/",
#         # 我们自己商户的密钥
#         app_private_key_path="../trade/keys/private_2048.txt",
#         # 支付宝的公钥
#         alipay_public_key_path="../trade/keys/alipay_key_2048.txt",  # 支付宝的公钥，验证支付宝回传消息使用，不是你自己的公钥,
#         # debug为true时使用沙箱的url。如果不是用正式环境的url
#         debug=True,  # 默认False,
#         return_url="http://47.93.198.159:8000/alipay/return/"
#     )
#
#     for key, value in query.items():
#         processed_query[key] = value[0]
#     # print (alipay.verify(processed_query, ali_sign))
#
#     # 直接支付:生成请求的字符串。
#     url = alipay.direct_pay(
#         # 订单标题
#         subject="测试订单derek",
#         # 我们商户自行生成的订单号
#         out_trade_no="20180417derek3",
#         # 订单金额
#         total_amount=100,
#         #成功付款后跳转到的页面，return_url同步的url
#         return_url="http://47.93.198.159:8000/alipay/return/"
#     )
#     # 将生成的请求字符串拿到我们的url中进行拼接
#     re_url = "https://openapi.alipaydev.com/gateway.do?{data}".format(data=url)
#
#     print(re_url)

