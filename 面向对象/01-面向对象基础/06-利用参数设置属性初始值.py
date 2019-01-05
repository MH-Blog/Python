class Cat:
    def __init__(self, name):
        print('这是一个初始化方法')
        # self.属性名 = 属性的初始值
        # self.name = 'Tom'
        self.name = name

    def eat(self):
        print('%s 爱吃鱼' % self.name)


# 使用类名()常见对象的时候,会自动调用初始化方法 __init__
tom = Cat('Tom')
print(tom.name)

lazy_cat = Cat('大懒猫')
lazy_cat.eat()
