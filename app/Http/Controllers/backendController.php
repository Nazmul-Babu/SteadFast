<?php

namespace App\Http\Controllers;

use App\Http\Middleware\AuthenticationMiddleware;
use Illuminate\Http\Request;
use Illuminate\Routing\Controllers\HasMiddleware;

class backendController extends Controller implements HasMiddleware
{
    public static function middleware()
    {
        return [
            AuthenticationMiddleware::class
        ];
    }

    public function dashboard (){
        $data = [];
        $data['active_menu'] = 'dashboard';
        return view('dashboard',compact('data'));
    }

    public function order(){
        $data['active_menu'] = 'order';
        return view('order',compact('data'));
    }
}
