def demo1():
    return int(input('输入整数:'))


def demo2():
    return demo1()

try:
    print(demo2())
except Exception as result:
    print('未知错误 %s'%result)

'''
异常的传递
    当 函数/方法 执行 出现异常，会 将异常传递 给 函数/方法 的 调用一方
    如果 传递到主程序，仍然 没有异常处理，程序才会被终止

提示
    在开发中，可以在主函数中增加 异常捕获
    而在主函数中调用的其他函数，只要出现异常，都会传递到主函数的 异常捕获 中
    这样就不需要在代码中，增加大量的 异常捕获，能够保证代码的整洁
'''
