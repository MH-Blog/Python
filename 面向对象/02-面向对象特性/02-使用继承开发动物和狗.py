class Animal:
    def eat(self):
        print('吃')
    def drink(self):
        print('喝')
    def run(self):
        print('跑')
    def sleep(self):
        print('睡')

class Dog(Animal):
    def bark(self):
        print('汪汪叫')


# 创建一个狗对象
wangcai =Dog()

wangcai.eat()
wangcai.run()
wangcai.drink()
wangcai.sleep()
wangcai.bark()

# 子类拥有父类  所有的方法
# class 类名(父类名):
#    pass