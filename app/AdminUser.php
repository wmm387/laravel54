<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;

class AdminUser extends Authenticatable
{
    protected $fillable = [
        'name', 'password',
    ];
    
    protected $rememberTokenName = '';
}
