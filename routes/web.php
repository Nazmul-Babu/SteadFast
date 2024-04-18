<?php

use App\Http\Controllers\AuthenticationController;
use App\Http\Controllers\backendController;
use App\Http\Middleware\AuthenticationMiddleware;
use Illuminate\Support\Facades\Route;



Route::match(['get', 'post'], '/', [AuthenticationController::class, 'login'])->name('login');


Route::prefix('admin')->group(function () {
    Route::name('admin.')->group(function () {
        Route::middleware(AuthenticationMiddleware::class)->group(function(){
            Route::get('logout', [AuthenticationController::class, 'logout'])->name('logout');
            Route::get('dashboard', [backendController::class, 'dashboard'])->name('dashboard');
            Route::get('order', [backendController::class, 'order'])->name('order');

        });
    });
});
