# -*- coding: utf-8 -*-
# @Time  : 2019/12/11 上午8:53
# @Author: MagicHuang
# @File  : exercise01
"""
题目：
    有四个数字：1、2、3、4，能组成多少个互不相同且无重复的三位数？各是多少？
"""

res = []
for i in range(1, 5):
    for j in range(1, 5):
        for h in range(1, 5):
            if i != j and i != h and j != h:
                res.append(str(i) + str(j) + str(h))
print(len(res))
