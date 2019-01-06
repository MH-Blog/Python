import random
import pygame

BG_IMAGE = './images/background.png'
ENEMY_IMAGE = './images/enemy1.png'
HERO_IMAGE = './images/me1.png'
BULLET_IMAGE = './images/bullet1.png'

# 游戏屏幕大小
SCREEN_RECT = pygame.Rect(0, 0, 480, 700)
# 刷新频率
FRAME_PER_SEC = 60
# 创建敌机的定时器常量
CREATE_ENEMY_EVENT = pygame.USEREVENT
# 英雄发射子弹事件
HERO_FIRE_EVENT = pygame.USEREVENT + 1


class GameSprite(pygame.sprite.Sprite):
    """游戏精灵基类"""

    def __init__(self, image_name, speed=1):
        # 调用父类的初始化方法
        super().__init__()

        # 加载图像
        self.image = pygame.image.load(image_name)
        # 设置尺寸
        self.rect = self.image.get_rect()
        # 记录速度
        self.speed = speed

    def update(self, *args):
        # 默认在垂直方向移动
        self.rect.y += self.speed


class Background(GameSprite):
    """游戏背景精灵"""

    def update(self):
        # 1. 调用父类的方法实现
        super().update()

        # 2. 判断是否移出屏幕，如果移出屏幕，将图像设置到屏幕的上方
        if self.rect.y >= SCREEN_RECT.height:
            self.rect.y = -self.rect.height


class Enemy(GameSprite):
    '''敌机精灵'''

    def __init__(self):
        # 1.调用父类方法,创建敌机精灵,同时指定敌机图片
        super().__init__(ENEMY_IMAGE)
        # 2.指定敌机的初始随机速度
        self.speed = random.randint(2, 6)
        # 3.指定敌机的初始随机位置
        self.rect.bottom = 0

        max_x = SCREEN_RECT.width - self.rect.width
        self.rect.x = random.randint(0, max_x)

    def update(self):
        # 1.调用父类方法,保持垂直方向的飞行
        super().update()

        # 2.判断是否飞出屏幕,如果是,需要从精灵组删除敌机
        if self.rect.y >= SCREEN_RECT.height:
            self.kill()

    def __del__(self):
        pass


class Hero(GameSprite):
    '''英雄精灵'''

    def __init__(self):
        # 1.调用父类方法,设置image&speed
        super().__init__(HERO_IMAGE, 0)
        # 2.设置英雄的初始位置
        self.rect.centerx = SCREEN_RECT.centerx
        self.rect.bottom = SCREEN_RECT.bottom - 80
        # 创建子弹的精灵组
        self.bullets = pygame.sprite.Group()

    def update(self):
        # 飞机水平移动
        self.rect.x += self.speed

        # 控制英雄不能离开屏幕
        if self.rect.left < SCREEN_RECT.left:
            self.rect.left = SCREEN_RECT.left
        elif self.rect.right > SCREEN_RECT.right:
            self.rect.right = SCREEN_RECT.right

    def fire(self):
        for i in (0, 1, 2):
            # 1.创建子弹精灵
            bullet = Bullet()
            # 2.设置精灵的位置
            bullet.rect.bottom = self.rect.y - i * 20
            bullet.rect.centerx = self.rect.centerx
            # 3.将精灵添加到精灵组
            self.bullets.add(bullet)


class Bullet(GameSprite):
    '''子弹精灵'''

    def __init__(self):
        # 调用父类方法,设置子弹图片,设置初始速度
        super().__init__(BULLET_IMAGE, -3)

    def update(self):
        # 调用父类方法,让子弹沿垂直方向飞行
        super().update()
        # 判断子弹是否飞出屏幕
        if self.rect.bottom < SCREEN_RECT.top:
            self.kill()

    def __del__(self):
        pass
