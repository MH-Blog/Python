try:
    # 提示用户输入一个整数
    num = int(input('请输入一个整数:'))

    # 使用 8 除以用户输入的整数并且输出
    result = 8 / num
    print(result)

# 捕获已知错误
except ValueError:
    print("请输入正确的整数")


# 捕获未知错误
except Exception as result:
    print('出现未知错误 %s' % result)

# 没有异常才会执行的代码
else:
    print('尝试成功!')

finally:
    # 无论是否有异常，都会执行的代码
    print("无论是否有异常，都会执行的代码")

print('-'*50)
