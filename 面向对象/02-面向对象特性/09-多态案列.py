class Dog(object):
    def __init__(self, name):
        self.name = name

    def game(self):
        print('%s 蹦蹦跳跳的玩耍...' % self.name)


class XiaoTianQuan(Dog):
    def game(self):
        print('%s 飞到天上去玩耍...' % self.name)


class Person(object):
    def __init__(self, name):
        self.name = name

    def game_with_dog(self, dog):
        print('%s 和 %s 快乐的玩耍...' % (self.name, dog.name))
        # 让狗玩耍
        dog.game()


# 1.创建一个狗对象
# wangcai=Dog('旺财')
wangcai = XiaoTianQuan('飞天旺财')

# 2.创建一个小明对象
xiaoming = Person('小明')

# 3.让小明调用和狗玩的方法
xiaoming.game_with_dog(wangcai)

'''
小结:
    Person 类中只需要让 狗对象 调用 game方法,而不关心是什么狗
    game 方法是在Dog父类中定义的
    
    在程序执行时,传入不同的 狗对象 实参,就会产生不同的执行效果
'''