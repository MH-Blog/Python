## 数据库设计
django app设计   
用户信息：users models.py 编写  
课程信息：courses models.py 编写    
机构信息：organization models.py 编写   
操作app：operation models.py 编写  
### users models.py 
1.UserProfile - 用户信息，覆盖默认user表  `AUTH_USER_MODEL = 'users.UserProfile' `  
2.EmailVerifyRecord - 邮箱验证码  
3.PageBanner - 轮播图  
### courses models.py 
1.Course - 课程基本信息  
2.Lesson - 章节信息  
3.Video - 视频  
4.CourseResource - 课程资源  

## PEP8规范
import：先导入python自带的、再导入第三方的、最后导入自己定义的包
