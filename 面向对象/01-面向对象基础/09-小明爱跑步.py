class Person:
    def __init__(self, name, weight):
        # self.属性 = 形参
        self.name = name
        self.weight = weight

    def __str__(self):
        des = '我的名字是 %s,体重是 %.2f公斤' % (self.name, self.weight)
        return des

    def run(self):
        print('%s爱跑步,跑步锻炼身体' % self.name)
        self.weight -= 0.5

    def eat(self):
        print('%s是吃货,吃完这顿再减肥' % self.name)
        self.weight += 1


xiaoming = Person('小明', 75.0)

xiaoming.run()
xiaoming.eat()
print(xiaoming)

'''
封装
    1.封装是面向对象编程的一大特点
    2.面向对象编程 第一步--将属性和方法封装到一个抽象的类中
    3.外界使用类创建对象,然后让对象调用方法
    4.对象方法的细节都被封装在类的内部
'''
