<?php
namespace App\Http\Controllers;
use App\User;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    //个人设置页面
    public function setting() {
        return view('user.setting');
    }
    
    //个人设置操作
    public function settingStore() {
        
    }
    
    //TODO:这里是通过get方式获取用户id来查找用户信息,url中含有用户id,已改使用post方式,这样url中同意使用me来代替用户id
    //个人中心页面
    public function show(User $user) {
        //这个人的信息,包含关注/粉丝/文章数
        $user = User::withCount(['stars', 'fans', 'posts'])->find($user->id);
        
        //这个人的文章列表,现在只取出最近的10条
        $posts = $user->posts()->orderBy('created_at', 'desc')->take(10)->get();
        
        //这个人关注的用户,包含关注用户的关注/粉丝/文章数
        $stars = $user->stars;//得到这个人的关注
        $susers = User::whereIn('id', $stars->pluck('star_id'))
                        ->withCount(['stars', 'fans', 'posts'])
                        ->get();
        
        //这个人的粉丝用户,包含关注/粉丝/文章数
        $fans = $user->fans;//得到这个人的粉丝
        $fusers = User::whereIn('id', $fans->pluck('fan_id'))
                        ->withCount(['stars', 'fans', 'posts'])
                        ->get();
        
        return view('user/show', compact('user', 'posts', 'susers', 'fusers'));
    }
    
    //
    public function fan(User $user) {
        $me = Auth::user();
        $me->doFan($user->id);
        
        return [
            'error' => 0,
            'msg' => '',
        ];
    }
    
    public function unfan(User $user) {
        $me = Auth::user();
        $me->doUnFan($user->id);
        
        return [
            'error' => 0,
            'msg' => '',
        ];
    }
    
}
