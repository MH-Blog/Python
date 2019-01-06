import pygame

hero_rect = pygame.Rect(100, 500, 120, 126)

print("坐标原点 %d %d" % (hero_rect.x, hero_rect.y))
print("英雄大小 %d %d" % (hero_rect.width, hero_rect.height))

# size 属性会返回矩形区域的 (宽, 高) 元组
print("英雄大小 %d %d" % hero_rect.size)


'''
pygame.Rect 是一个比较特殊的类，内部只是封装了一些数字计算
不执行 pygame.init() 方法同样能够直接使用
'''