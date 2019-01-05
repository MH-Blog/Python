# 1. 打开文件
file_read = open("README.txt")
file_write = open("README[复件].txt", "w")

i = 0

# 2. 读取并写入文件
while True:
    # 每次读取一行
    text = file_read.readline()
    i += 1
    # 判断是否读取到内容
    if not text:
        break

    file_write.write(text)
    print('第%d行读取完成' % i)
    
# 3. 关闭文件
file_read.close()
file_write.close()
