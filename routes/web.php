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

Route::get('/', function () {
    return view('welcome');
});

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
Route::get('/topic/{topic}', 'TopicController@show');
//投稿
Route::post('/topic/{topic}/submit', 'TopicController@submit');





























