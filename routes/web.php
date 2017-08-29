<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'LoginController@welcome');

//用户模块
//注册页面
Route::get('/register', 'RegisterController@index');
//注册行为
Route::post('/register', 'RegisterController@register');
//登录页面
Route::get('/login', 'LoginController@index');
//登录行为
Route::post('/login', 'LoginController@login');
//登录行为
Route::get('/logout', 'LoginController@logout');
//个人设置页面
Route::get('/user/me/setting', 'UserController@setting');
//个人设置操作
Route::post('/user/me/setting', 'UserController@settingStore');

//搜索
Route::get('/posts/search', 'PostController@search');   

//创建文章
Route::get('/posts/create', 'PostController@create');
Route::post('/posts/store', 'PostController@store');
//删除文章
Route::any('/posts/delete/{post}', 'PostController@delete');
//文章列表项
Route::get('/posts', 'PostController@index');
//文章详情页
Route::any('/posts/{post}', 'PostController@show');
//编辑文章
Route::get('/posts/edit/{post}', 'PostController@edit');
Route::put('/posts/{post}', 'PostController@update');
//图片上传
Route::any('/posts/image/upload', 'PostController@imageUpload');

//提交评论
Route::any('/posts/{post}/comment', 'PostController@comment');
//点赞
Route::any('/posts/{post}/zan', 'PostController@zan');
Route::any('/posts/{post}/unzan', 'PostController@unzan');

//个人界面
Route::get('/user/{user}', 'UserController@show');
//关注
Route::any('/user/{user}/fan', 'UserController@fan');
Route::any('/user/{user}/unfan', 'UserController@unfan');

//专题详情
Route::any('/topic/{topic}', 'TopicController@show');
//投稿
Route::any('/topic/{topic}/submit', 'TopicController@submit');

//通知
Route::any('/notices', 'NoticeController@index');

//后台路由
Route::group(['prefix' => 'admin'], function() {
    
    //登录
    Route::get('/login', '\App\Admin\Controllers\LoginController@index');
    //登录行为
    Route::post('/login', '\App\Admin\Controllers\LoginController@login');
    //登出行为
    Route::get('/logout', '\App\Admin\Controllers\LoginController@logout');
    
    Route::group(['middleware' => 'auth:admin'], function() {
        
        //首页
        Route::get('/home', '\App\Admin\Controllers\HomeController@index');
        
        Route::group(['middleware' => 'can:system'], function() {
            
            //管理人员模块
            Route::get('/users', '\App\Admin\Controllers\UserController@index');
            Route::get('/users/create', '\App\Admin\Controllers\UserController@create');
            Route::post('/users/store', '\App\Admin\Controllers\UserController@store');
            //用户角色页面
            Route::get('/users/{user}/role', '\App\Admin\Controllers\UserController@role');
            Route::post('/users/{user}/role', '\App\Admin\Controllers\UserController@storeRole');
            
            //角色
            Route::get('/roles', '\App\Admin\Controllers\RoleController@index');
            Route::get('/roles/create', '\App\Admin\Controllers\RoleController@create');
            Route::post('/roles/store', '\App\Admin\Controllers\RoleController@store');
            //角色权限页面
            Route::get('/roles/{role}/permission', '\App\Admin\Controllers\RoleController@permission');
            Route::post('/roles/{role}/permission', '\App\Admin\Controllers\RoleController@storePermission');
            
            //权限
            Route::get('/permissions', '\App\Admin\Controllers\PermissionController@index');
            Route::get('/permissions/create', '\App\Admin\Controllers\PermissionController@create');
            Route::post('/permissions/store', '\App\Admin\Controllers\PermissionController@store');
        });
            
            Route::group(['middleware' => 'can:post'], function() {
                
                //文章审核模块
                Route::get('/posts', '\App\Admin\Controllers\PostController@index');
                Route::post('/posts/{post}/status', '\App\Admin\Controllers\PostController@status');
            });
                
                Route::group(['middleware' => 'can:topic'], function() {
                    //专题管理
                    Route::resource('topics', '\App\Admin\Controllers\TopicController',
                        ['only' => ['index', 'create', 'store', 'destroy']]);
                });
                    
                    Route::group(['middleware' => 'can:notice'], function() {
                        //通知管理
                        Route::resource('notices', '\App\Admin\Controllers\NoticeController',
                            ['only' => ['index', 'create', 'store']]);
                    });
    });
});