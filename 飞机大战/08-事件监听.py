import pygame

pygame.init()

# 创建游戏窗口 480*700
screen = pygame.display.set_mode((480, 700))

# 绘制背景图像

bg = pygame.image.load("./images/background.png")
screen.blit(bg, (0, 0))
# pygame.display.update()


# 绘制英雄的飞机
hero = pygame.image.load('./images/me1.png')
screen.blit(hero, (200, 500))

# 可以在所有绘制工作完成之后,统一调用update方法
pygame.display.update()

# 创建时钟对象
clock = pygame.time.Clock()
# 游戏循环 -> 意味着游戏的正式开始

#  定义英雄的初始位置
hero_rect = pygame.Rect(150, 500, 102, 126)

while True:

    # 可以指定循环体内部的代码执行的频率
    clock.tick(60)

    # 更新英雄位置
    hero_rect.y -= 1

    # 如果移出屏幕，则将英雄的顶部移动到屏幕底部
    if hero_rect.y <= 0:
        hero_rect.y = 700

    # 绘制背景图片
    screen.blit(bg, (0, 0))
    # 绘制英雄图像
    screen.blit(hero, hero_rect)

    # 捕获事件
    event_list = pygame.event.get()
    if len(event_list) > 0:
        print(event_list)

    # 更新显示
    pygame.display.update()

    # 事件监听
    for event in pygame.event.get():
        # 判断用户是否点击了关闭按钮
        if event.type == pygame.QUIT:
            print("退出游戏...")
            pygame.quit()
            # 直接退出系统
            exit()
