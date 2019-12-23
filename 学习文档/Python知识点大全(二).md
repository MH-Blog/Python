[TOC]

# sorted() 排序函数

sorted(iterable, *,key=None,reverse=False)

> **sort 与 sorted 区别：**
>
> sort 是应用在 list 上的方法，sorted 可以对所有可迭代的对象进行排序操作。
>
> list 的 sort 方法返回的是对已经存在的列表进行操作，无返回值，而内建函数 sorted 方法返回的是一个新的 list，而不是在原来的基础上进行的操作。 

1.接收一个字典

```python
#  生成一个按照字典的key进行排序的新列表
>>>sorted({'k1': 10, 'k2': 100, 'k3': 30})
>>>sorted({1: 'D', 2: 'B', 3: 'B', 4: 'E', 5: 'A'})

['k1', 'k2', 'k3']
[1, 2, 3, 4, 5]
```

2.传入key参数，参数是函数名

```python
# key指定的函数将作用于list的每一个元素上，并根据key函数返回的结果进行排序
>>> sorted([36, 5, -12, 9, -21], key=abs) #abs是python中的内置函数，返回参数的绝对值

[5, 9, -12, -21, 36]
```

3.传入reverse参数

```python
# reverse -- 排序规则，reverse = True 降序 ， reverse = False 升序（默认）
```

4.以下list做出2道题，1：按照名字排列 2：按照分数排列

L = [('Bob', 75), ('Adam', 92), ('Bart', 66), ('Lisa', 88)]

```python
# 第一题，按照名字排列
def by_name(t):
	return t[0] # 这里返回的t[0]，并不是list的0号位置元素，而是list内元素的0号位置，所以，他指向的是('Bob',75)的0号位

L1 = sorted(L,key=by_name)
print (L1)

[('Adam', 92), ('Bart', 66), ('Bob', 75), ('Lisa', 88)]
```

```python
# 第二题，按照分数排列
L = [('Bob', 75), ('Adam', 92), ('Bart', 66), ('Lisa', 88)]
def by_score(t):
    return t[1]

L2 = sorted(L, key=by_score, reverse=True)
print (L2)

[('Adam', 92), ('Lisa', 88), ('Bob', 75), ('Bart', 66)]
```

# filter() 过滤函数

filter(function, itetable)

> **filter()** 函数用于过滤序列，过滤掉不符合条件的元素，返回一个迭代器
>
> 该接收两个参数，第一个为函数，第二个为序列，序列的每个元素作为参数传递给函数进行判；其中是function返回True的元素，如果function传入None，则返回所有本身可以判断为True的元素

1.找到1-10中的质数

```python
l = [x for x in range(10)]
print(list(filter(lambda x : x%2 == 0, l)))

[2,4,6,8]
```

2.把值大于50的由元祖组成的键值对过滤出来

```python
dic = {'k1': 10, 'k2': 100, 'k3': 50, 'k4': 90}items()
# items()以列表返回可遍历的(键, 值) 元组数组
print(list(filter(lambda x: x[1] > 50, dic.items()))) 

[('k2', 100), ('k4', 90)]
```

# encode() decode() 编码解码函数

```shell
# encode和decode分别指编码和解码。在python中，Unicode类型是作为编码的基础类型，
          decode                 encode
str ---------> str(Unicode) ---------> str
```

举例说明

```python
>>> u = '中文'                 # 指定字符串类型对象u 

# 不同的编码格式得到的结果不同
>>> str1 = u.encode('gb2312')  # 以gb2312编码对u进行编码，获得bytes类型对象
>>> print(str1)
b'\xd6\xd0\xce\xc4'
>>> str2 = u.encode('gbk')     # 以gbk编码对u进行编码，获得bytes类型对象
>>> print(str2)
b'\xd6\xd0\xce\xc4'
>>> str3 = u.encode('utf-8')   # 以utf-8编码对u进行编码，获得bytes类型对象
>>> print(str3)
b'\xe4\xb8\xad\xe6\x96\x87'


# 解码时必须用与编码格式相同的格式去解码
>>> u1 = str1.decode('gb2312') # 以gb2312编码对字符串str进行解码，获得字符串类型对象
>>> print('u1')
'中文'
>>> u2 = str1.decode('utf-8')  # 报错，因为str1是gb2312编码的
UnicodeDecodeError: 'utf-8' codec can't decode byte 0xd6 in position 0: invalid continuation byte
```

# map()映射函数

map(function,iterable) 

> - function -- 函数
> - iterable -- 一个或多个序列
>
> 返回一个迭代器，由每个可迭代对象符合函数条件的组成。传送结果给这个迭代器。

一个可迭代的对象作为参数

```python
# 计算平方数
def square(x):
    return x ** 2

# 计算列表各个元素的平方
print(list(map(square, [1, 2, 3, 4, 5])))
 # 使用 lambda 匿名函数
print(list(map(lambda x: x ** 2, [1, 2, 3, 4, 5])))

[1, 4, 9, 16, 25]
[1, 4, 9, 16, 25]
```

两个可迭代的对象作为参数

```python
# 提供了两个列表，对相同位置的列表数据进行相加
def addition(x, y):
    return x + y

print(list(map(addition, [1, 3, 5, 7, 9], [2, 4, 6, 8, 10])))
# 使用 lambda 匿名函数
print(list(map(lambda x, y: x + y, [1, 3, 5, 7, 9], [2, 4, 6, 8, 10])))

[3, 7, 11, 15, 19]
[3, 7, 11, 15, 19]
```

# 内置方法 \_\_str\_\_  \_\_repr\_\_

> 什么是内置方法
> 在不是需要程序员定义，本身就存在在类中的方法就是内置方法，名字：双下方法，魔术方法，内置方法
> 如：init 不需要我们主动调用，而是在实例化的时候内部自动调用的。所以双下方法，都不需要我们直接调用，都有另外一种主动触发他的方法
>
> str， repr 内置方法，两者都只能返回字符串，而且都要用return
>
> str，什么情况下触发_str：
> 1 当你打印一个对象的时候，
> 2 当你使用%格式化的时候
> 3 str() 强转数据类型的时候
>
> repr ，repr是str的备胎，有str的时候执行str,没有实现str的时候，执行repr
>
> 什么情况触发repr
> 1 repr(obj)内置函数对应的结果是repr的返回值
> 2 使用%r格式化的时候触发repr

```python
class Student:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def __str__(self):
        return 'str : {}'.format(self.name)

    def __repr__(self):
        return 'repr : {}'.format(self.age)


stuList = []
stu1 = Student('张三', 18)
stu2 = Student('李四', 20)
stuList.append(stu1)
stuList.append(stu2)
for id, stu in enumerate(stuList, 1):
    print(id, stu)  # 当打印一个对象的时候 --> 1 str : 张三
    print('%s %s' % (id, stu))  # 当使用%格式化的时候 --> 1 str : 张三
    print(id, str(stu))  # str() 强转数据类型的时候 -->1 str : 张三
    print(repr(stu))  # repr(obj)内置函数对应的结果是repr的返回值 --> repr : 18
    print('%r' % stu)  # 使用%r格式化的时候触发repr --> repr : 18
```

# zip() 拉链函数

zip(*iterables) 

> 生成一个迭代器，它聚合了可迭代对象的每个元素。
> 返回一个由元组组成的迭代器，其中第i个元组包含来自每个参数序列或可迭代对象的第i个元素，当最短的可迭代对象被输出时，该迭代器完成，

```python
x = [1, 2, 3, 4]
y = ['one', 'two', 'three']
z = ('a', 'b', 'c', 'd')
print(list(zip(x, y, z)))

[(1, 'one', 'a'), (2, 'two', 'b'), (3, 'three', 'c')]
```

\*zip(\*iterables)函数是zip()函数的逆过程，将zip对象变成原先组合前的数据

```python
x = [1, 2, 3, 4]
y = ['one', 'two', 'three', 'Four']
z = ['a', 'b', 'c', 'd']

n1, n2, n3 = zip(*zip(x, y, z)) # 这里返回三个值，元祖类型，用三个变量去接收
print(x == list(n1) and y == list(n2) and z == list(n3))


True
```

# 判断类型函数type(), isinstance(),issubclass()

> - type() 如果你只有第一个参数则返回对象的类型，三个参数返回新的类型对象
> - isinstance()  对象与类之间的关系， 判断这个对象是否是这个类，这个类的子类的对象
> - issubclass() # class 类 # 类与类之间的关系，判断一个类是否是另一个类的子类，另一个类的子类的子类

type()

```python
type(1)
<class 'int'>
```

isinstance()  

```python
class A:
    pass

class B:
    pass

a = A()
b = B()

print(isinstance(a, object))  # True  # 判断a这个实例化对象是不是object的对象，由于object是所有类的父类，isinstance函数也可以判断出来
print(isinstance(a, A))  # True   # 判断a是否是A类的实例化对象，
print(isinstance(b, A))  # False  # 判断b是否是A类的实例化对象
print(isinstance(a, B))  # False
```

issubclass()

```python
class A:
    pass

class B(A):
    pass

class C(B):
    pass

print(issubclass(B, A))  # True  # 判断B是否是A的子类
print(issubclass(C, A))  # True  # 还可以判断C是否是A的子类的子类
```

