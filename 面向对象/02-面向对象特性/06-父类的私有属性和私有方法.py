class A:
    def __init__(self):
        self.num1 = 100
        self.__num2 = 200

    def __test(self):
        print('私有属性 %d' % self.__num2)


class B(A):
    def demo(self):
        # 1.在子类的对象方法中,不能访问父类的私有属性
        # print('访问父类的私有属性 %d'% self.__num2)

        # 2.在子类的对象方法中,也不能调用父类的私有方法
        # self.__test()
        pass


# 创建一个子类对象
b = B()
print(b.num1)
print(b.demo())

