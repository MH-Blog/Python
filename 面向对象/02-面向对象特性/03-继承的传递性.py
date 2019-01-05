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

class XiaoTianQuan(Dog):
    def fly(self):
        print('我能飞')


# 创建一个哮天犬对象
xiao_tian_quan=XiaoTianQuan()


xiao_tian_quan.sleep()
xiao_tian_quan.bark()
xiao_tian_quan.run()
xiao_tian_quan.fly()



'''
专业术语:
    Dog 类是 Animal 类的子类,Animal 类是 Dog 类的父类,Dog 类从 Animal 类继承
    Dog 类是 Animal 类的派生类,Animal 类是 Dog 类的基类,Dog 类从Animal 类派生
    
'''