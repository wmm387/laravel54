<?php

namespace App\Admin\Controllers;

class HomeController extends Controller 
{
    //登录展示页
    public function index() {
        return view('admin.home.index');
    }
}