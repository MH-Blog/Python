class Women:
    def __init__(self, name):
        self.name = name
        self.__age = 18

    def __secret(self):
        # 在对象的方法内部,是可以访问对象的私有属性的
        print("%s 的年龄是 %d" % (self.name, self.__age))


xiao_fang = Women('小芳')

# 私有属性,在外界是不能够直接访问的
# print(xiao_fang.__age)

# 私有方法,在外界是不能够直接访问的
# xiao_fang.__secret()

xiao_fang._Women__secret()

'''
应用场景:
    在实际开发中,对象 的某些属性或方法 可能只希望 在对象的内部被使用,而 不希望在外部被访问到
    私有属性 就是 对象 不希望公开的 属性
    私有方法 就是 对象 不希望公开的 方法
定义方法:
    在 定义属性或方法时,在 属性名或者方法名前 增加 两个下划线,定义的就是 私有 属性或方法
    
但在Python中 并没有 真正意义的私有
    在给属性,方法 命名时,实际上是 对  名称 做了一些特殊处理,使得外界无法访问到
    处理方式: 在名称前面加上 _类名=> _类名__名称
'''
