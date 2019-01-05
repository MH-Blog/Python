class Cat:
    def eat(self):
        print('%s 爱吃鱼' % self.name)

    def drink(self):
        print('小猫要喝水')


# 创建对象
tom = Cat()

# tom.eat()
# tom.name = 'Tom'
# 这样会报错  因为在eat()方法运行时 找不到name属性

tom.name = 'Tom'
tom.eat()
tom.drink()

'''
提示
    在日常开发中,不推荐在类的外部给对象增加属性,如果在运行时,没有找到属性,程序会报错
    对象应该包含有哪些属性,应该封装在类的内部

'''
