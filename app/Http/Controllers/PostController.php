<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{
    //列表
    public function index() {
        
        //查找posts表,以创建时间排序
        $posts = Post::orderBy('created_at', 'desc')->paginate(5);
        //返回文章列表页面,并传入查询posts表结果
        return view("post/index", compact('posts'));
    }

    //详情页面
    public function show(Post $post) {
        return view("post/show", compact('post'));
    }

    //创建文章
    public function create() {
        return view("post/create");
    }

    //创建逻辑
    public function store() {
        //验证
        $this->validate(request(), [
            'title' => 'required|string|max:100|min:2',
            'content' => 'required|string|min:10',
        ]);
        
        //逻辑
        //获取当前登录用户ID
        $user_id = Auth::id();
        //获取文章标题,内容和用户ID
        $params = array_merge(request(['title', 'content']), compact('user_id'));
        //创建文章模型,即插入数据库
        $post = Post::create($params);
        
        //渲染
        return redirect("posts");
    }

    //编辑页面
    public function edit(Post $post) {
        return view("post/edit", compact('post'));
    }

    //编辑逻辑
    public function update(Post $post) {
        //验证
        $this->validate(request(), [
            'title' => 'required|string|max:100|min:2',
            'content' => 'required|string|min:10',
        ]);
        
        //验证用户修改权限
        $this->authorize('update', $post);
        
        //TODO:验证错误后刷新界面保留用户填写的数据
        
        //逻辑(更新数据库)
        $post->title = request('title');
        $post->content = request('content');
        $post->save();
        
        //渲染
        return redirect("posts/{$post->id}");
    }

    //删除逻辑
    public function delete(Post $post) {
        
        //验证用户删除权限
        $this->authorize('delete', $post);
        
        $post->delete();
        
        return redirect("posts");
    }
    
    //图片上传
    public function imageUpload(Request $request) {
        $path = $request->file('wangEditorH5File')->storePublicly(md5(time()));
        return asset('storage/' . $path);
    }
}
