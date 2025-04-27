<?php

namespace App\Http\Controllers;

use App\Models\Sport;
use App\Models\Home;
use App\Models\SportsMainCategory;
use Illuminate\Http\Request;

class SportsController extends Controller
{
    public function index($slug)
    {
        $home_items = Home::where('id', 1)->first(); 
        $sport = Sport::where('slug', $slug)->with('featuredPhotos','mainCategories')->firstOrFail();
        return view('layouts.home', compact('sport','home_items'));
    }

    public function main_category($slug)
    {
        $home_items = Home::where('id', 1)->first();
        $mcat = SportsMainCategory::where('slug', $slug)->with('subCategories')->firstOrFail();
        return view('layouts.sports_main_category', compact('home_items', 'mcat'));
    }


    public static function getSports()
    {
        return Sport::all(); // Fetch all sports
    }
}
