<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class SportsMainCategory extends Model
{
    use HasFactory;

    protected $table = 'sports_main_category'; // Table name
    protected $primaryKey = 'id'; // Primary key

    public $timestamps = true;
    protected $fillable = [
        'sport_id',
        'name',
        'slug',
        'description',
        'photo',
        'status',
    ];

    // Each SportsMainCategory belongs to a Sport
    public function sport()
    {
        return $this->belongsTo(Sport::class, 'sport_id', 'id');
    }
    
    public function subCategories()
    {
        return $this->hasMany(SportsSubCategory::class, 'main_cat_id', 'id');
    }

    
}
