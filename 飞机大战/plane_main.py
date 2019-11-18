import pygame
from plane_sprites import *

score = 0


class PlaneGame(object):
    '''飞机大战游戏'''

    def __init__(self):
        print('游戏初始化')
        # 1.创建游戏的窗口
        self.screen = pygame.display.set_mode(SCREEN_RECT.size)
        # 2.创建游戏的时钟
        self.clock = pygame.time.Clock()
        # 3.调用私有方法,精灵和精灵组的创建
        self.__create_sprites()
        # 4.设置定时器事件 - 创建敌机 1s
        pygame.time.set_timer(CREATE_ENEMY_EVENT, 1000)
        pygame.time.set_timer(HERO_FIRE_EVENT, 500)

    def __create_sprites(self):
        '''创建精灵组'''
        # 创建背景精灵和精灵组
        # 创建背景精灵和精灵组
        bg1 = Background(BG_IMAGE)
        bg2 = Background(BG_IMAGE)
        bg2.rect.y = -bg2.rect.height

        # 背景组
        self.back_group = pygame.sprite.Group(bg1, bg2)
        # 敌机组
        self.enemy_group = pygame.sprite.Group()
        # 创建英雄的精灵和精灵组
        self.hero = Hero()
        self.hero_group = pygame.sprite.Group(self.hero)

    def start_game(self):
        '''开始游戏'''

        print('游戏开始...')

        while True:
            # 1.设置刷新帧率
            self.clock.tick(FRAME_PER_SEC)
            # 2.事件监听
            self.__event_handler()
            # 3.碰撞检测
            self.__check_collide()
            # 4.更新精灵组
            self.__update_sprites()
            # 5.更新屏幕显示
            pygame.display.update()

    def __event_handler(self):
        '''事件监听'''
        for event in pygame.event.get():
            # 判断是否退出游戏
            if event.type == pygame.QUIT:
                PlaneGame.__game_over()
            elif event.type == CREATE_ENEMY_EVENT:
                # 创建敌机精灵
                enemy = Enemy()
                # 将敌机精灵添加到敌机精灵组
                self.enemy_group.add(enemy)
            elif event.type == HERO_FIRE_EVENT:
                self.hero.fire()
        # 使用键盘提供的方法获取键盘按键 - 按键元组
        keys_pressed = pygame.key.get_pressed()
        # 判断元组中对应的按键索引值 1
        if keys_pressed[pygame.K_RIGHT]:
            self.hero.speed = 4
        elif keys_pressed[pygame.K_LEFT]:
            self.hero.speed = -4
        else:
            self.hero.speed = 0

    def __check_collide(self):
        '''碰撞检测'''
        #  1.子弹摧毁敌机
        bullets=pygame.sprite.groupcollide(self.hero.bullets, self.enemy_group, True, True)
        if bullets!={}:
             PlaneGame.__count()
        # print(score)
        # 2.敌机摧毁英雄
        enemies = pygame.sprite.spritecollide(self.hero, self.enemy_group, True)
        # 判断列表是否有内容
        if len(enemies) > 0:
            # 让英雄牺牲
            self.hero.kill()
            # 结束游戏
            PlaneGame.__game_over()


    @staticmethod
    def __count():
        global score
        score += 1
        print('击中敌机 %d 架' %score)

    def __update_sprites(self):
        '''更新精灵组'''
        for group in [self.back_group, self.enemy_group, self.hero_group, self.hero.bullets]:
            group.update()
            group.draw(self.screen)

    @staticmethod
    def __game_over():
        '''游戏结束'''
        print('游戏结束...')
        print('-' * 8)
        print('得分 %d分' % score)
        print('-' * 8)
        pygame.quit()
        exit()


if __name__ == '__main__':
    # 创建游戏对象
    game = PlaneGame()

    # 开始游戏
    game.start_game()
