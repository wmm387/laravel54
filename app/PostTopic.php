<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PostTopic extends Model
{
    protected $fillable = ['post_id','topic_id'];
}
