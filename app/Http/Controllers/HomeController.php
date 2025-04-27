<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Home;

class HomeController extends Controller
{
    public function index()
    {
        $home_items = Home::where('id', 1)->first(); // Correct way to get the first row

        if (!$home_items) {
            dd("No data found for Home with ID = 1");
        }

        return view('app', compact('home_items'));
    }


}
