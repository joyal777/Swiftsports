<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class SportsSubCategory extends Model
{
    use HasFactory;

    protected $table = 'sports_sub_category'; // Table name
    protected $primaryKey = 'id'; // Primary key

    public $timestamps = true;
    protected $fillable = [
        'main_cat_id',
        'name',
        'slug',
        'description',
        'photo',
        'status',
    ];

    // Each subcategory belongs to a main category
    public function mainCategory()
    {
        return $this->belongsTo(SportsMainCategory::class, 'main_cat_id', 'id');
    }
}
