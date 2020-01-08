# @File  : weibo_login.py
# @Author: Magic Huang
# @GitHub: github.com/MH-Blog
# @Date  : 2020/1/6

import requests


def get_auth_url():
    weibo_auth_url = 'https://api.weibo.com/oauth2/authorize'
    redirect_url = 'http://127.0.0.1:8000/complete/weibo/'
    auth_url = weibo_auth_url + '?client_id={client_id}&redirect_uri={re_url}'.format(client_id=585306143,
                                                                                      re_url=redirect_url)

    print(auth_url)


def get_access_token(code='4fb80c98b84b6a5b4799b05d0812367f'):
    access_token_url = 'https://api.weibo.com/oauth2/access_token'
    re_dict = requests.post(access_token_url, data={
        "client_id": '585306143',
        "client_secret": '4b4419c22f4774cd3fc0fbbbcffa0ed2',
        "grant_type": 'authorization_code',
        "code": code,
        "redirect_uri": 'http://127.0.0.1:8000/complete/weibo/'

    })
    print(re_dict.json())


def get_user_info(access_token='2.0066XDSG0frsbd9c0b02ddfbZgZqPD', uid='5763614451'):
    url = "https://api.weibo.com/2/users/show.json?access_token={token}&uid={uid}".format(token=access_token, uid=uid)
    res=requests.get(url)
    print(res.text)

# {'access_token': '2.0066XDSG0frsbd9c0b02ddfbZgZqPD', 'remind_in': '157679999', 'expires_in': 157679999, 'uid': '5763614451', 'isRealName': 'true'}
if __name__ == '__main__':
    # get_auth_url()
    # get_access_token()
    get_user_info()
