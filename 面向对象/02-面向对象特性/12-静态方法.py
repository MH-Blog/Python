class Dog:
    @staticmethod
    def run():
        print('小狗要跑...')


# 通过类型.调用静态方法 -  不需要创建对象

Dog.run()

'''
在开发时，如果需要在 类 中封装一个方法，这个方法：
    既 不需要 访问 实例属性 或者调用 实例方法
    也 不需要 访问 类属性 或者调用 类方法
这个时候，可以把这个方法封装成一个 静态方法
'''
