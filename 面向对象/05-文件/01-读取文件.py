# 1. 打开 - 文件名需要注意大小写
file = open("README.txt")

# 2. 读取
text = file.read()
print(text)

# 3. 关闭
file.close()

'''
open	打开文件，并且返回文件操作对象
read	将文件内容读取到内存
write	将指定内容写入文件
close	关闭文件
'''