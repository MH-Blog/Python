class Tool():
    # 使用赋值语句定义类属性,记录所有工具对象的数量
    count =0

    def __init__(self,name):
        self.name=name

        # 让类属性的值+1
        Tool.count +=1


# 1.创建工具对象
tool1 =Tool('斧头')
tool2 =Tool('榔头')
tool3 =Tool('水桶')

# 2.输出工具对象的综述
tool1.count=99
print(tool1.count)

print(Tool.count)



'''
类属性 就是针对 类对象 定义的属性
使用 赋值语句 在 class 关键字下方可以定义 类属性

类属性 用于记录 与这个类相关 的特征
类方法 就是针对 类对象 定义的方法

在 类方法 内部可以直接访问 类属性 或者调用其他的 类方法
'''