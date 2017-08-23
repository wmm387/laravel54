<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;

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
        
        Post::create(request(['title', 'content']));
        
        return redirect("posts");
    }

    //编辑页面
    public function edit() {
        return view("post/edit");
    }

    //编辑逻辑
    public function update() {

    }

    //删除逻辑
    public function delete() {

    }
}
