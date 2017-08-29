<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;

class NoticeController extends Controller
{
    //列表
    public function index() {
        $user = Auth::user();
        $notices = $user->notices;
        
        return view('notice.index', compact('notices'));
    }
}
