[TOC]

## python逻辑运算符

1.成员

and or not 

优先级：() > not > and > or

2.and

逻辑运算符and，a andb，如果a和b都为True，则返回True，如果其中一个为False，返回False，简言之：一假则假，全真则真

3.or

逻辑运算符or，a or b， 如果a和b有一个为True，则返回True，如果全为False，返回False，简言之：一真则真，全假则假

4.not

逻辑运算符not，是结果的相反逻辑，比如 not 4>5为True

5.优先级级别从上至下

| 运算符                   | 描述                                                   |
| ------------------------ | ------------------------------------------------------ |
| **                       | 指数 (最高优先级)                                      |
| ~ + -                    | 按位翻转, 一元加号和减号 (最后两个的方法名为 +@ 和 -@) |
| \* / % //                | 乘，除，取模和取整除                                   |
| \+ -                     | 加法减法                                               |
| \>> ，<<                 | 右移，左移运算符                                       |
| &                        | 位 'AND'                                               |
| ^\|                      | 位运算符                                               |
| <= < > >=                | 比较运算符                                             |
| <> == !=                 | 等于运算符                                             |
| = %= /= //= -= += *= **= | 赋值运算符                                             |
| is， is not              | 身份运算符                                             |
| in， not in              | 成员运算符                                             |
| Not ， and， or          | 逻辑运算符                                             |

## python中list列表和字典的区别与联系

**Python**的基础数据结构有：列表(list), 元祖(tuple), 字典(dict), 字符串(string), 集合(set)等，区别联系如下：

| 数据类型   | 列表 (list)                                                  | 元祖 (tuple)                                                 | 集合 (set)                                                   | 字典 (dictionary)                                            |      |
| ---------- | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ---- |
| 表示       | []                                                           | ()                                                           | ()                                                           | {}                                                           |      |
| 举例       | a_list = [1, True, ‘aa’]                                     | a_tuple = (1, True, ‘aa’)；  t2 = (1`,`)                     | a_set = {1, True, ‘aa’};  s = set( [1, True, ‘aa’])          | a_dict = {‘name’: ‘xuan’, ‘age’: 21}                         |      |
| 是否有序   | 有序                                                         | 有序                                                         | `无序`                                                       | `无序`                                                       |      |
| 是否读写   | 读写                                                         | `只读`                                                       | 读写                                                         | 读写                                                         | 读写 |
| 空定义     | a_list = []                                                  | a_tuple = ()                                                 | a_set = set(); not_sure = {}空字典                           | a_dict = {}                                                  |      |
| 元素可修改 | a_list[0] = 23                                               | `否`                                                         | `否`                                                         | a_dict[‘age’] = 30                                           |      |
| 下标访问   | a_list[0] = 23                                               | a_tuple[0]                                                   | `否`                                                         | a_dict[‘age’] = 30                                           |      |
| 添加元素   | **+、append、extend、insert**                                | `不可添加`                                                   | **add、update**                                              | a_dict[‘new_key’] = ‘value’                                  |      |
| 删除元素   | **del、remove、pop()、pop(1)、clear**                        | `不可删除`                                                   | **discard、remove、pop、clear**                              | **pop、popitem、clear**                                      |      |
| 元素查找   | **index、count、in**                                         | **in**                                                       | **in**                                                       | a_dict[‘key’]                                                |      |
| 布尔真值   | 非空                                                         | 非空                                                         | 非空                                                         | 非空                                                         |      |
| 定义       | 列表(list)是有序的集合，可以存放不同数据类型的数据，并且list中的每个元素的都对应着一个索引来标记其位置，且索引从0开始。 | tuple与list类似，不同之处在于tuple中的元素不能进行修改。而且tuple使用小括号，list使用方括号。 | dic字典是另一种可变的容器模型，且可存储任意类型对象。字典的每个键值(key:value)对用冒号(`:`)分割，每个对之间用逗号(,)分割，整个字典包括在花括号{}中 | set()函数是创建一个无序不重复元素集，可添加，删除数据，还可以计算交集、差集、并集等。 python 的集合类型和 其他语言类似, 是一个无序不重复元素集, 基本功能包括关系测试和消除重复元素.集合对象还支持union(联合), intersection(交), difference(差)和sysmmetricdifference(对称差集)等数学运算,和我们初中数学学的集合的非常的相似。 |      |

列表list -元祖-tuple- 集合set-字典dic全方位分析

| 数据结构      | 表示 | 分析                                                         |
| ------------- | ---- | ------------------------------------------------------------ |
| **列表list**  | []   | 列表list，用中括号“[ ]”表示 **1.任意对象的有序集合**  列表是一组任意类型的值，按照一定顺序组合而成的 **2.通过偏移读取**  组成列表的值叫做元素(Elements)。每一个元素被标识一个索引，第一个索引是0，序列的功能都能实现   **3.可变长度，异构以及任意嵌套**  列表中的元素可以是任意类型，甚至是列表类型，也就是说列表可以嵌套  **4.可变的序列**   支持索引、切片、合并、删除等等操作，它们都是在原处进行修改列表  **5.对象引用数组**   列表可以当成普通的数组，每当用到引用时，Python总是会将这个引用指向一个对象，所以程序只需处理对象的操作。当把一个对象赋给一个数据结构元素或变量名时，Python总是会存储对象的引用，而不是对象的一个拷贝 |
| **元祖tuple** | ()   | **1.任意对象的有序集合**  与列表相同 **2.通过偏移存取**  与列表相同 3.**属于不可变序列类型**  类似于字符串，但元组是不可变的，不支持在列表中任何原处修改操作，不支持任何方法调用 4.**固定长度、异构、任意嵌套**  固定长度即元组不可变，在不被拷贝的情况下长度固定，其他同列表  **5.对象引用的数组** 与列表相似，元祖是对象引用的数组>  **tuple和list相比** 1.比列表操作速度快 2.对数据“写保护“  3.可用于字符串格式化中  4.可作为字典的key |
| **字典dic**   | {}   | **1.通过键而不是偏移量来读取**  字典就是一个关联数组，是一个通过关键字索引的对象的集合，使用键-值（key-value）进行存储，查找速度快  **2.任意对象的无序集合** 字典中的项没有特定顺序，以“键”为象征  ** 3.可变长、异构、任意嵌套** 同列表，嵌套可以包含列表和其他的字典等   **4.属于可变映射类型** 因为是无序，故不能进行序列操作，但可以在远处修改，通过键映射到值。字典是唯一内置的映射类型（键映射到值的对象）   **5.对象引用表**  字典存储的是对象引用，不是拷贝，和列表一样。字典的key是不能变的，list不能作为key，字符串、元祖、整数等都可以  **dic和list比较，dict有以下几个特点:** 1.查找和插入的速度极快，不会随着key的增加而增加  2.需要占用大量的内存，内存浪费多  **而list相反**：  1.查找和插入的时间随着元素的增加而增加  2.占用空间小，浪费内存很少  所以，dict是用空间来换取时间的一种方法 |
| **集合**      | ()   | **1.是一组key的集合，但不存储value，并且key不能重复**  创建一个set，需要提供一个list作为输入集合,s = set([1,2,3]),注意，传入的参数 [1, 2, 3] 是一个list，而显示的 set([1, 2, 3]) 只是告诉你这个set内部有1，2，3这3个元素，显示的[ ]不表示这是一个list   **2.重复元素在set中自动被过滤**   set可以看成数学意义上的无序和无重复元素的集合，因此，两个set可以做数学意义上的交集、并集等操作 还有一种集合是forzenset( )，是冻结的集合，它是不可变的，存在哈希值，好处是它可以作为字典的key，也可以作为其它集合的元素。缺点是一旦创建便不能更改，没有add，remove方法  **set和dict对比**  1.set和dict的唯一区别仅在于没有存储对应的value  2.set的原理和dict一样，同样不可以放入可变对象，因为无法判断两个可变对象是否相等，也就无法保证set内部“不会有重复元素” |

字典-列表-集合-元祖相互比较

| 比较                         | 详情                                                         |
| ---------------------------- | ------------------------------------------------------------ |
| **字典dict和列表list的比较** | dict的查找和插入的速度极快，不会随着key的增加而变慢。但是需要占用大量的内存，内存浪费多。相反，list查找和插入的时间随着元素的增加而增加。但是占用空间小，浪费内存很少。 |
| **字典dict和集合set比较**    | 唯一区别仅在于没有存储对应的value，但是，set的原理和dict一样，所以，同样不可以放入可变对象，因为无法判断两个可变对象是否相等，也就无法保证set内部“不会有重复元素”。 |
| **元祖tuple与列表list比较**  | tuple与list类似，不同之处在于tuple中的元素不能进行修改。而且tuple使用小括号，list使用方括号。 |

Python一些内置函数

| 编号 | 函数             | 注释                                                        |
| ---- | ---------------- | ----------------------------------------------------------- |
| 1    | `cmp`(A`,` B)    | 比较可为list、tuple等的A、B，A>B为1，A=B为0，小于为-1       |
| 2    | `len`(obj)       | 计算元素个数。                                              |
| 3    | `max`(obj)       | 返回元素最大值。                                            |
| 4    | `min`(obj)       | 返回元素最小值。                                            |
| 5    | `reversed`(obj)  | 对元素进行翻转                                              |
| 6    | `enumerate`(obj) | 遍历list的元素，返回序号及其对应的元素 for x，y in list：   |
| 7    | `zip`()          | 打包成tuple（元组），然后返回由这些tuples组成的list（列表） |

列表[]、元组()和字符串都是序列，字符串是字符的序列，列表和元祖是任意类型的序列

## python 中else在while循环中的用法

else 可以在while和for循环中运用，else和while或for搭配使用，不再是条件判断的含义。而是当while条件不成立时，直接跳出while循环，执行else输出如：

```python
count = 0
while count > 12:
   if True:
      print('Yes')
      break
   count += 1
else:
   print('No')

# 输出
No
```

```python
a = 0
while a < 6:
   print('loop',a)
   a = a + 1
else:
   print('well done!')#没有break的情况下，循环没有被打断

# 输出
loop 0
loop 1
loop 2
loop 3
loop 4
loop 5
well done!
```

```python
a = 0
while a < 6:
   print('loop', a)
   a += 1
   break # 有break的情况下，执行一次循环中止了，这种情况下不是正常中止的，else代码块是不执行的
else:
   print('Well done!')

# 输出
loop 0
```

总结：else下的代码块在while循环正常执行结束了之后就会执行else代码块。否则，不执行。

## 匿名函数

为了解决那些功能很简单的需求而设计的一句话函数

语法：lambda 参数列表 : 表达式

说明：使用lambda关键字创建匿名函数。所谓匿名函数，就是没有名字的函数。匿名函数冒号后面的表达式有且只能有一个，注意：是表达式，而不是语句。匿名函数自带return，而return的结果就是表达式的计算后的结果。

通过对比匿名函数和普通函数来说明下lambda的用法

1.无参匿名函数：

```python
>>>t = lambda : True #分号前无任何参数
>>>t()
True
# 等价于
>>> def func(): return True
>>> func()
True 
```

2.带参数匿名函数

```python
>>> lambda x: x**3 #一个参数
>>> lambda x,y,z:x+y+z #多个参数
>>> lambda x,y=3: x*y #允许参数存在默认值
# 匿名函数调用
>>> c = lambda x,y,z: x*y*z
>>> c(2,3,4)
24
>>> c = lambda x,y=2: x+y #使用了默认值
>>> c(10) #不输的话，使用默认值2
12
>>> a = lambda *z:z  # *z返回的是一个元祖，即返回的是和参数一样的类型
>>> a('Testing1','Testing2')
('Testing1', 'Testing2')

```

3.直接后面传递实参

```python
>>> (lambda x,y: x if x> y else y)(101,102)
102
>>> (lambda x:x**2)(3)
9
# lambda返回的值，结合map,filter,reduce使用
>>> filter(lambda x:x%3==0,[1,2,3,4,5,6])
[3, 6]

# 等价于下面的列表推导式
>>> l = [x for x in [1,2,3,4,5,6] if x%3==0]
>>> l
[3, 6]
```
4.嵌套使用

```python
# lambda嵌套到普通函数中,lambda函数本身做为return的值
>>> def increment(n):
             return lambda x: x+n
>>> f=increment(4)
>>> f(2)
6

>>> def say():
			title = 'Sir,'
			action= lambda x: title + x
			return action
>>> act = say()
>>> act('Smith!')
'Sir,Smith!'
```
5.大量例子

```python
# 例01:字符串联合，有默认值，也可以x=(lambda...)这种格式
>>> x = (lambda x="Boo",y="Too",z="Zoo": x+y+z)
>>> x("Foo")
'FooTooZoo'

# 例02: 和列表联合使用
>>> L = [lambda x:x**2,\
lambda x:x**3,\
lambda x:x**4]

>>> for f in L:
... print f(2)
...
4
8
16
# 也可以如下面这样调用
>>> print L[0](3)
9

# 例03: 和字典结合使用
>>> key = 'B'
>>> dic = { 'A': lambda: 2*2,\
... 'B': lambda: 2*4,\
... 'C': lambda: 2*8}
>>> dic[key]()
8

# 例04: 求最小值
>>> lower = lambda x,y: x if x<y else y
>>> lower('aa','ab')
'aa'

# 例05: 和map及list联合使用
>>> import sys
>>> showall = lambda x:list(map(sys.stdout.write,x))
>>> showall(['Jerry\n','Sherry\n','Alice\n'])
Jerry
Sherry
Alice

>>> showall(['Jerry','Sherry','Alice'])
JerrySherryAlice

#等价于下面
>>> showall = lambda x: [sys.stdout.write(line) for line in x]
>>> showall(('I\t','Love\t','You!'))
I Love You![None, None, None]

# 例06: 在Tkinter中定义内联的callback函数
import sys
from Tkinter import Button,mainloop
x = Button(text='Press me',
command=(lambda:sys.stdout.write('Hello,World\n')))
x.pack()
x.mainloop()

>>>
Hello,World!
Hello,World!

# 例07: lambda和map联合使用,

>>>  out = lambda *x: sys.stdout.write(' '.join(map(str,x)))
>>> out('This','is','a','book!\n')
This is a book!

# 例08: 判断字符串是否以某个字母开头
>>> print (lambda x: x.startswith('B'))('Bob')
True
>>> Names = ['Anne', 'Amy', 'Bob', 'David', 'Carrie', 'Barbara', 'Zach']
>>> B_Name= filter(lambda x: x.startswith('B'),Names)
>>> B_Name
['Bob', 'Barbara']

# 例09: lambda和map联合使用
>>>  squares = map(lambda x:x**2,range(5))
>>> squares
[0, 1, 4, 9, 16]

# 例10. lambda和map,filter联合使用
>>>  squares = map(lambda x:x**2,range(10))
>>> filters = filter(lambda x:x>5 and x<50,squares)
>>> filters
[9, 16, 25, 36, 49]

# 例11. lambda和sorted联合使用
# 按death名单里面，按年龄来排序
# 匿名函数的值返回给key，进来排序
>>> death = [ ('James',32),
('Alies',20),
('Wendy',25)]
>>> sorted(death,key=lambda age:age[1]) #按照第二个元素，索引为1排序
[('Alies', 20), ('Wendy', 25), ('James', 32)]

# 例12. lambda和reduce联合使用
>>> L = [1,2,3,4]
>>> sum = reduce(lambda x,y:x+y,L)
>>> sum
10

# 例13. 求2-50之间的素数
#素数:只能被1或被自己整除的数
>>> nums = range(2,50)
>>> for i in nums:
nums = filter(lambda x:x==i or x % i,nums)
>>> nums
[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]

# 例14. 求两个列表元素的和
>>> a = [1,2,3,4]
>>> b = [5,6,7,8]
>>> map(lambda x,y:x+y, a,b)
[6, 8, 10, 12]

#例15. 求字符串每个单词的长度
>>> sentence = "Welcome To Beijing!"
>>> words = sentence.split()

>>> lengths = map(lambda x:len(x),words)
>>> lengths
[7, 2, 8]

# 写成一行:
>>>  print map(lambda x:len(x),'Welcome To Beijing!'.split())
```
## 函数名的应用、闭包

函数名可以作为一个变量，函数的参数，函数的返回值，容器类类型的元素

1.作为一个变量

```python
def func1():
    print(666)

f1 = func1  # 这里函数名实际上是个变量，只是变量名改了而已
f2 = f1

>>>
f2()
666
```
2.作为函数的参数
```python
def func2(x):
    print(x)
    print('===', x())

print(func2(func1))  # 把func1的地址作为func2的参数，再执行func2函数。

>>>

<function func1 at 0x000001898B86FE18>
666
=== None
None
```
3.函数名作为返回值
```python
def wraaper():
    def inner():
        print('inner  ')
    return inner
ret = wraaper()
ret()

>>> 

inner   
'''
此时执行了inner()函数，为什么执行外部函数可以执行内嵌的函数呢，因为return了函数名，实际上形成了闭包。
```
4.闭包
当return一个嵌入的函数名时，在全局命名空间就可以直接找到该函数的地址，也就是可以执行函数，原理是在全局变量空间外层的函数的内存地址指向了嵌入的函数的内存地址。通常要执行内层的函数时必须执行外层的函数才可以执行内嵌的函数，当外层函数return了内嵌的函数名，实际上把内嵌的函数地址放在外面了，就是告诉所有外部人，这就是我的地址，通过这个地址你们就可以找到我。

## enumerate() 枚举函数

enumerate(iterable, start =0)

返回一个枚举对象，第一个参数必须是一个序列，一个迭代器，或者其他支持迭代的对象。用enumetate()利用iterator中**next**()的方法返回一个包含计数（默认从0）开始的以及从迭代中获得的值元组。


```python
>>>seasons = ['Spring', 'Summer', 'Fall', 'Winter']
>>>print(tuple(enumerate(seasons)))  
>>>print(list(enumerate(seasons, start=4)))  # 从4开始数

((0, 'Spring'), (1, 'Summer'), (2, 'Fall'), (3, 'Winter'))
[(4, 'Spring'), (5, 'Summer'), (6, 'Fall'), (7, 'Winter')]
```