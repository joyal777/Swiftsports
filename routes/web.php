<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\SportsController;
use App\Http\Controllers\HomeController;



Route::get('/', [HomeController::class, 'index']);

Route::get('/sports/{slug}', [SportsController::class, 'index']);

Route::get('/sports/main-category/{slug}',[SportsController::class, 'main_category'])
    ->name('sports_main_categories');

