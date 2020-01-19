<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class FrontendMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

        if($user = Auth::user())
        {
            if(empty($user->role))
            {
                return $next($request);
            }

            return redirect('dashboard');
        }
        else{
            return redirect('login');
        }        
    }
}
