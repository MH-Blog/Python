from distutils.core import setup

# setup()  **args 多值的字典参数

setup(name="message",  # 包名
      version="1.0",  # 版本
      description="MagicHuang's 发送和接收消息模块",  # 描述信息
      long_description="完整的发送和接收消息模块",  # 完整描述信息
      author="MagicHuang",  # 作者n
      author_email="hzw6991@foxmail.com",  # 作者邮箱
      url="www.magichuang.cn",  # 主页
      py_modules=["message.send_message",
                  "message.receive_message"])

'''
1) 创建 setup.py
setup.py 的文件
from distutils.core import setup

setup(name="hm_message",  # 包名
      version="1.0",  # 版本
      description="itheima's 发送和接收消息模块",  # 描述信息
      long_description="完整的发送和接收消息模块",  # 完整描述信息
      author="itheima",  # 作者
      author_email="itheima@itheima.com",  # 作者邮箱
      url="www.itheima.com",  # 主页
      py_modules=["hm_message.send_message",
                  "hm_message.receive_message"])

有关字典参数的详细信息，可以参阅官方网站：
https://docs.python.org/2/distutils/apiref.html

2) 构建模块
      $ python3 setup.py build
      3) 生成发布压缩包
      $ python3 setup.py sdist
      注意：要制作哪个版本的模块，就使用哪个版本的解释器执行！

3)
安装模块
      $ tar -zxvf message-1.0.tar.gz 
      $ sudo python3 setup.py install
卸载模块
      直接从安装目录下，把安装模块的 目录 删除就可以
      $ cd /usr/local/lib/python3.5/dist-packages/
      $ sudo rm -r hm_message*

'''