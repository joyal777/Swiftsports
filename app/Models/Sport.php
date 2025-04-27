<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Sport extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'slug',
        'description',
    ];

    // One Sport has many Featured Photos
    public function featuredPhotos()
    {
        return $this->hasMany(SportsFeaturedPhoto::class, 'sport_id', 'id');
    }
    public function mainCategories()
    {
        return $this->hasMany(SportsMainCategory::class, 'sport_id', 'id');
    }
}
