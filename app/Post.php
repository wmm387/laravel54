<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

//默认表=>posts
class Post extends Model
{
    //不可以注入的字段
//     protected $guarded;
    
    //可以注入的字段
    protected $fillable = ['title', 'content', 'user_id'];
    
    //关联用户
    public  function user() {
        
        //belongsTo3个参数,1:关联模型;2:当前模型数据名;3:关联表数据名      
        //默认就是该表user_id与id关联,请遵循命名规范,即可省略参数
        return $this->belongsTo('App\User');
    }
}
