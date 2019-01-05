class Gun:
    def __init__(self, model):
        # 1.枪的型号
        self.model = model
        # 2.子弹的数量
        self.bullet_count = 0

    def add_bullet(self, count):
        self.bullet_count = +count

    def shoot(self):
        # 1.判断子弹数量
        if self.bullet_count <= 0:
            print('[%s] 没有子弹了...' % self.model)
            return
        # 2.发射子弹
        self.bullet_count -= 1

        # 3.提示发射信息
        print('[%s] 突突突... 子弹: [%d]' % (self.model, self.bullet_count))


class Soldier:
    def __init__(self, name):
        # 1.姓名
        self.name = name
        # 2.枪 -新兵没有枪
        self.gun = None

    def fire(self):
        # 1.判断士兵是否有枪
        if self.gun is None:
            print('[%s] 还没有枪...' % self.name)
            return
        # 2.高喊口号
        print('冲啊... [%s]' % self.name)
        # 3.让枪装填子弹
        self.gun.add_bullet(50)
        # 4.让枪发射子弹
        self.gun.shoot()


# 1.创建枪对象
ak47 = Gun('AK47')

# 2.创建许三多
xusanduo = Soldier('许三多')

xusanduo.gun = ak47
xusanduo.fire()

# 一个对象的 属性 可以是另一个类创建的对象

'''
身份运算符
    身份运算符用于 比较 两个对象的内存地址 是否一致--是否是对同一个对象的引用
    在Python中针对 None 比较时  建议使用 is 判断
    
    is 与 == 区别:
        is 用于判断 两个变量 引用对象是否为同一个
        == 用于判断 引用变量的值 是否相等
'''
