import message

message.send_message.send('hello')

rec = message.receive_message.receive()
print(rec)


'''
包 是一个 包含多个模块 的 特殊目录
目录下有一个 特殊的文件 __init__.py
包名的 命名方式 和变量名一致，小写字母 + _

要在外界使用 包 中的模块，需要在 __init__.py 中指定 对外界提供的模块列表
'''