<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AdminRole extends Model
{
    protected $table = "admin_roles";
    protected $fillable = ['name', 'description'];
    
    //当前角色的所有权限
    public function permissions() {
        return $this->belongsToMany(\App\AdminPermission::class,
            'admin_permission_role', 'role_id', 'permission_id')
            ->withPivot(['permission_id', 'role_id']);
    }
    
    //给一个角色赋予某个权限
    public function grantPermission($permission) {
        return $this->permissions()->save($permission);
    }
    
    //取消角色赋予的权限
    public function deletePermission($permission) {
        return $this->permissions()->detach($permission);
    }
    
    //判断角色是否有权限
    public function hasPermission($permission) {
        return $this->permissions->contains($permission);
    }
}
