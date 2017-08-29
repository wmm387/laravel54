<?php

namespace App\Admin\Controllers;

use App\AdminRole;
use App\AdminPermission;

class RoleController extends Controller
{
    //角色列表页面
    public function index() {
        $roles = AdminRole::paginate(10);
        
        return view('admin.role.index', compact('roles'));
    }
    
    //创建角色
    public function create() {
        return view('admin.role.add');
    }
    
    //创建操作
    public function store() {
        //验证
        $this->validate(request(), [
            'name' => 'required|min:3',
            'description' => 'required',
        ]);
        
        //逻辑
        AdminRole::create(request(['name', 'description']));
        
        //渲染
        return redirect('/admin/roles');
    }
    
    //角色权限关系
    public function permission(AdminRole $role) {
        //获取所有权限
        $permissions = AdminPermission::all();
        
        //获取当前角色的权限
        $myPermissions = $role->permissions;
        
        return view('admin.role.permission', compact('permissions', 'myPermissions', 'role'));
    }
    
    //储存角色权限行为
    public function storePermission(AdminRole $role) {
        //验证
        $this->validate(request(), [
            'permissions' => 'required|array',
        ]);
        
        //逻辑,与用户角色管理类似
        $permissions = AdminPermission::find(request('permissions'));
        $myPermissions = $role->permissions;
        
        //add
        $addPermissions = $permissions->diff($myPermissions);
        foreach ($addPermissions as $permission) {
            $role->grantPermission($permission);
        }
        //delete
        $deletePermission = $myPermissions->diff($permissions);
        foreach ($deletePermission as $permission) {
            $role->deletePermission($permission);
        }
        
        //渲染
        //TODO:传入修改成功/失败提示
        return redirect('/admin/roles');
    }
}








