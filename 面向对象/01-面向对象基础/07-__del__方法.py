class Cat:
    def __init__(self, name_temp):
        self.name = name_temp
        print('%s 来了' % self.name)

    def __del__(self):  # 在对象被系统销毁之前自动调用的方法
        print('%s 我去了' % self.name)


# tom是一个全局变量
tom = Cat('Tom')
print(tom.name)

# del 关键字可以删除一个对象
del tom

print('='*50)


'''
应用场景:
    __init__ 改造初始化方法,可以让创建对象更加灵活
    __del__ 如果希望在对象被销毁前,再做一些事情,可以考虑一下__del__方法
生命周期:
    一个对象从调用 类名() 创建,生命周期开始
    一个对象的 __del__方法一旦被调用,生命周期结束
    在对象的声明周期内,可以访问对象属性,或者让对象调用方法

'''
