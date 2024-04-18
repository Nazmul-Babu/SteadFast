<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthenticationController extends Controller
{
    public function login(Request $request){
        if(Auth::check()){
            return redirect()->route('admin.dashboard');
        }
          if($request->isMethod('post')){
            $request->validate([
                'email' => 'required|email',
                'password' => 'required'
            ]);
            if (Auth::attempt([
                'email' => request('email'),
                'password' => request('password'),
            ])) {
                return redirect('admin/dashboard');
            } else {
                return back()->with('error','credential not matched');
            }
          }
        return view('login');
    }

    public function logout(){
        Auth::guard('web')->logout();

        return redirect()->route('login');
    }
}
