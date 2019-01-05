def input_password():
    # 1.提示用户输入密码
    pwd = input('请输入密码:')

    # 2.判断密码长度 >= 8,返回用户输入的密码
    if len(pwd) >= 8:
        return pwd
    # 3.如果 <8 主动抛出异常
    print('主动抛出异常')
    # 1> 创建异常对象 - 使用异常的错误信息字符串作为参数
    ex = Exception('密码长度不够')  # *args是一个多值的元组参数
    # 2>主动抛出异常
    raise ex

try:
    login = input_password()
    print(login)
except Exception as result:
    print(result)



'''
Python 中提供了一个 Exception 异常类
在开发时，如果满足 特定业务需求时，希望 抛出异常，可以：
    创建 一个 Exception 的 对象
    使用 raise 关键字 抛出 异常对象
'''