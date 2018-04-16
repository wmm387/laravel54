# laravel54
基于laravel5.4的简书网站   

知识点:  
* composer的使用
* laravel配置
* elasticsearch的应用  

实现功能:  
* 用户登录注册
* 文章的增删改查
* 文章的分类
* 评论和点赞设置
* 搜索文章
* 后台权限功能  

TODO:
* 用户个人设置界面,用户头像信息
* 在后台用户角色添加权限后,弹出成功或错误提示  

使用方法:  
1. 使用git下载项目
2. composer install
3. 复制.env.example为.env,修改其中的各个配置
4. 使用laravel的migrate来进行数据库迁移,或者使用laravel.sql文件建立数据库

界面如下:  
![login](https://github.com/wmm387/laravel54/blob/master/img/login.png)
![register](https://github.com/wmm387/laravel54/blob/master/img/register.png)
![post](https://github.com/wmm387/laravel54/blob/master/img/post.png)
![posts](https://github.com/wmm387/laravel54/blob/master/img/posts.png)
![create_post](https://github.com/wmm387/laravel54/blob/master/img/create_post.png)
![user](https://github.com/wmm387/laravel54/blob/master/img/user.png)
