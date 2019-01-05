# 1. 打开文件
file_read = open("README.txt")
file_write = open("README[复件].txt", "w")

# 2. 读取并写入文件
text = file_read.read()
file_write.write(text)

# 3. 关闭文件
file_read.close()
file_write.close()