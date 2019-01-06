import pygame

pygame.init()

# 创建游戏窗口
screen = pygame.display.set_mode((480,700))


# 游戏循环
while True:
    event = pygame.event.poll()
    if event.type == pygame.QUIT:
        pygame.quit()
        exit()
