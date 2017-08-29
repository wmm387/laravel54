<?php

namespace App\Admin\Controllers;

use App\Notice;
use App\Jobs\SendMessage;

class NoticeController extends Controller
{
    public function index() {
        $notices = Notice::all();
        return view('admin.notice.index', compact('notices'));
    }
    
    public function create() {
        return view('admin.notice.create');
    }
    
    public function store() {
        //验证
        $this->validate(request(), [
            'title' => 'required|string',
            'content' => 'required|string',
        ]);
        
        //逻辑
        $notice = Notice::create(request(['title', 'content']));
        
        //将通知注入到SendMessage任务中
        dispatch(new SendMessage($notice));
        
        //渲染
        return redirect('/admin/notices');
    }
}