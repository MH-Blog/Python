class A:
    def  test(self):
        print('A---test方法')
    def  Demo(self):
        print('A---Demo方法')


class B:
    def  test(self):
        print('B---test方法')
    def  Demo(self):
        print('B---Demo方法')


class C(B,A):
    # 多继承可以让子类对象,同时具有多个父类的属性和方法
    pass


# 创建子类对象
c=C()

c. test()
c.Demo()


# 确定C类对象调用方法的顺序
print(C.__mro__)