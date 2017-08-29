<?php

namespace App\Admin\Controllers;

use App\AdminUser;
use App\AdminRole;

class UserController extends Controller
{
    //管理员列表页面
    public function index() {
        $users = AdminUser::paginate(10);
        return view('admin.user.index', compact('users'));
    }
    
    //管理员创建页面
    public function create() {
        return view('admin.user.add');
    }
    
    //创建操作
    public function store() {
        //验证
        $this->validate(request(), [
            'name' => 'required|min:3',
            'password' => 'required',
        ]);
        
        //逻辑
        $name = request('name');
        $password = bcrypt(request('password'));
        AdminUser::create(compact('name', 'password'));
        
        //渲染
        return redirect('/admin/users');
    }
    
    //用户角色页面
    public function role(AdminUser $user) {
        $roles = AdminRole::all();
        $myRoles = $user->roles;
        
        return view('admin.user.role', compact('roles', 'myRoles','user'));
    }
    
    //储存用户角色
    public function storeRole(AdminUser $user) {
        //验证
        $this->validate(request(), [
            'roles' => 'required|array'
        ]);
        
        //逻辑
        /*
         * 这里是checkbox,所有可能有添加角色,也可能有删除角色
         * 所有要与现有的角色对比
         */
        $roles = AdminRole::findMany(request('roles'));
        $myRoles = $user->roles;
        
        //要增加的
        $addRoles = $roles->diff($myRoles);
        foreach ($addRoles as $role) {
            $user->assignRole($role);
        }
        //要删除的
        $deleteRoles = $myRoles->diff($roles);
        foreach ($deleteRoles as $role) {
            $user->deleteRole($role);
        }
        
        //渲染
        return redirect('/admin/users')->with('success', '修改成功!');
    }
}
















