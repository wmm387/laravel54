<?php

namespace App\Admin\Controllers;

use App\Post;

class PostController extends Controller 
{
    //登录展示页
    public function index() {
        //这里不使用全局范围查询,而使用正常查询,当status等于0时,按照创建时间排序,每页10个数据取出
        $posts = Post::withoutGlobalScope('avaiable')
                ->where('status', 0)
                ->orderBy('created_at','desc')
                ->paginate(10);
        
        return view('admin.post.index', compact('posts'));
    }
    
    public function status(Post $post) {
        //验证
        $this->validate(request(), [
            'status' => 'required|in:-1,1',
        ]);
        
        //逻辑
        $post->status = request('status');
        $post->save();
        
        return [
            'error' => 0,
            'msg' => '',
        ];
    }
}