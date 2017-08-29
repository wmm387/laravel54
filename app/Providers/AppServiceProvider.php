<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        Schema::defaultStringLength(191);
        \Carbon\Carbon::setLocale('zh');
        
        //视图合成器
        \View::composer('layout.sidebar', function($view) {
           $topics = \App\Topic::all();
           $view->with('topics', $topics);
        });
        
        //慢sql优化
//         DB::listen(function($query) {
//             $sql = $query->sql;
//             $bindings = $query->bindings;
//             $time = $query->time;
//             \Log::debug(var_export(compact('sql', 'bindings', 'time'), true));
//         });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
