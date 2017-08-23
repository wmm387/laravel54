<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserController extends Controller
{
    //个人设置页面
    public function setting() {
        return view('user.setting');
    }
    
    //个人设置操作
    public function settingStore() {
        
    }
}
