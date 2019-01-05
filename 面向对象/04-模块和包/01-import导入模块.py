import _测试模块1 as DogMoudle
import _测试模块2 as CatMoudle

DogMoudle.say_hello()
CatMoudle.say_hello()

dog = DogMoudle.Dog()
print(dog)

cat = CatMoudle.Cat()
print(cat)


'''
每一个以扩展名 py 结尾的 Python 源代码文件都是一个 模块
模块名 同样也是一个 标识符，需要符合标识符的命名规则
在模块中定义的 全局变量 、函数、类 都是提供给外界直接使用的 工具
模块 就好比是 工具包，要想使用这个工具包中的工具，就需要先 导入 这个模块

'''