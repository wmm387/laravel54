<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use App\AdminPermission;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
//         'App\Model' => 'App\Policies\ModelPolicy',
            'App\Post' => 'App\Policies\PostPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        //注册gate
        $permissions = AdminPermission::all();
        foreach ($permissions as $permission) {
            Gate::define($permission->name, 
                function($user) use($permission) {
                    return $user->hasPermission($permission);
            });
        }
    }
}
