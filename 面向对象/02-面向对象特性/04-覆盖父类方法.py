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
    def bark(self):
        print('叫的跟神一样...')


# 创建一个哮天犬对象
xiao_tian_quan=XiaoTianQuan()


xiao_tian_quan.bark()

'''
重写父类方法两种情况:
    1.覆盖 父类的方法
    2.对父类方法进行 扩展
'''