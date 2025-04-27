<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SportsFeaturedPhoto extends Model
{
    use HasFactory;

    protected $table = 'sports_featured_photos'; // Table name
    protected $primaryKey = 'id'; // Primary key

    public $timestamps = true; // Enable timestamps (if your table has `created_at` & `updated_at`)

    protected $fillable = [
        'sport_id', 
        'photo', 
        'status', 
        'alt_text'
    ];

    // Relationship with the Sports model
    public function sport()
    {
        return $this->belongsTo(Sport::class, 'sport_id', 'id');
    }
}
