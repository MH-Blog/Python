class Cat:
    def __init__(self, name_temp):
        self.name = name_temp
        print('%s 来了' % self.name)

    def __del__(self):  # 在对象被系统销毁之前自动调用的方法
        print('%s 我去了' % self.name)

    def __str__(self):
        # 必须返回一个字符串
        return '我是小猫[%s]' % self.name


tom = Cat('Tom')
print(tom)