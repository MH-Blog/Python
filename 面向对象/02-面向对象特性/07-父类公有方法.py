class A:
    def __init__(self):
        self.num1 = 100
        self.__num2 = 200

    def __test(self):
        print('私有方法 %d' % self.__num2)

    def test(self):
        print('父类的公有方法 %d' % self.__num2)
        self.__test()

class B(A):
    def demo(self):
        # 1.在子类的对象方法中,不能访问父类的私有属性
        # print('访问父类的私有属性 %d'% self.__num2)

        # 2.在子类的对象方法中,也不能调用父类的私有方法
        # self.__test()

        # 3.访问父类的公有属性
        print('子类方法 %d' % self.num1)

        # 4.调用父类的公有方法
        self.test()


# 创建一个子类对象
b = B()
print(b.num1)
b.demo()

'''
子类对象 不能 在自己的方法内部,直接 访问 父类的 私有属性 或 私有方法
子类对象  可以通过 父类 的公有方法 间接 访问到 私有属性 或 私有方法

私有属性 方法是对象的隐私,不对外公开,外界 以及 子类 都不能直接访问
私有属性 方法 通常用于做一些内部的事情

'''
