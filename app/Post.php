<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

//默认表=>posts
class Post extends Model
{
    //不可以注入的字段
//     protected $guarded;
    
    //可以注入的字段
    protected $fillable = ['title', 'content'];
}
