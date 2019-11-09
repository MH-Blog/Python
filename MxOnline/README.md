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
### organization models.py
1.CourseOrg - 课程机构基本信息  
2.Teacher - 教师基本信息  
3.CityDict - 城市信息
### operation models.py
1.UserAsk - 用户咨询  
2.UserMessage - 用户消息
3.CourseComments - 用户评论
4.UserCourse - 用户学习的课程
5.UserFavorite - 用户收藏
## 后台管理系统
**特点：**
权限管理、少前端样式、快速开发
## PEP8规范
import：先导入python自带的、再导入第三方的、最后导入自己定义的包
