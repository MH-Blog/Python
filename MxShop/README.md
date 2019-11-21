# MxShop
Django REST framework + vue 打造生鲜超市<br />

## 环境
python: 3.6.4  
Django: 2.2.7

### xadmin2下载地址
[点击下载](https://github.com/sshwsfc/xadmin/tree/django2)<br /> 
### 富文本编辑器Ueditor下载地址
[点击下载](https://github.com/twz915/DjangoUeditor3/)<br /> 

## 步骤
1.下载代码仓库到本地  
2.pip install -r requements.txt  
3.python manage.py runserver  
4.http://127.0.0.1/xadmin  访问xadmin后台   
## 笔记
### 前后端分离的优缺点
**为什么要前后端分析：**  
1.pc、app、pad多端适应  
2.SPA开发模式开始流行   
3.前后端开发职责不清  
4.开发效率问题，前后端互相等待  
5.前端一直配合这后端，能力受限  
6.后台开发语言和模板高度耦合，导致开发语言依赖严重  
**前后端分离的缺点：**  
1.前后端学习门槛增加  
2.数据依赖导致文档重要性增加  
3.前端工作量加大  
4.SEO的难度加大  
5.后端开发模式迁移增加成本
### restful api
**restful api目前是前后端分离最佳实践**  
1.轻量，直接通过
