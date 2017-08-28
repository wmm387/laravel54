<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AdminPermission extends Model
{
    protected $table = "admin_permissions";
    protected $fillable = ['name', 'description'];
}
