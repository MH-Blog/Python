# 打开文件
file = open("README.txt")

while True:
    # 读取一行内容
    text = file.readline()

    # 判断是否读到内容
    if not text:
        break

    # 每读取一行的末尾已经有了一个 `\n`
    print(text, end="")

# 关闭文件
file.close()

'''
readline 方法可以一次读取一行内容
方法执行后，会把 文件指针 移动到下一行，准备再次读取
'''