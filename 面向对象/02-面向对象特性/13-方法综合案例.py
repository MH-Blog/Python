class Game(object):
    # 历史最高分
    top_score = 0  # 类属性 记录最高分

    def __init__(self, player_name):
        self.player_name = player_name

    @staticmethod  # 静态方法 显示帮助信息
    def show_help():
        print('帮助信息:让僵尸进入大门')

    @classmethod  # 类方法 显示历史记录
    def show_top_score(cls):
        print('历史记录:%d' % cls.top_score)

    def start_game(self):  # 实例方法
        print('% s 开始游戏啦...' % self.player_name)


# 1.查看游戏的帮助信息
Game.show_help()

# 2.查看历史最高分
Game.show_top_score()

# 3.创建游戏对象
game = Game('小明')
game.start_game()
