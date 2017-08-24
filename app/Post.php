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
    public function user() {
        
        //belongsTo3个参数,1:关联模型;2:当前模型数据名;3:关联表数据名      
        //默认就是该表user_id与id关联,请遵循命名规范,即可省略参数
        return $this->belongsTo('App\User');
    }
    
    //关联评论模块
    public function comments() {
        
        //hasMany 是一对多的关系,一遍文章是否有多个评论
        return $this->hasMany('App\Comment')
                    ->orderBy('created_at', 'desc');
    }
    
    //关联赞模块
    public function zan($user_id) {
        //通过user_id来判断是否有赞
        return $this->hasOne(\App\Zan::class)
                    ->where('user_id', $user_id);
    }
    
    //文章所以得赞
    public function zans() {
        return $this->hasMany(\App\Zan::class);
    }
}