<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Home extends Model
{
    protected $table = 'home_items'; // Table name
    protected $primaryKey = 'id'; // Primary key



    protected $fillable = [
        'heading_1',
        'subheading_1',
        'heading_2',
        'subheading_2',
        'heading_3',
        'subheading_3',
        'description_1',
        'description_2',
        'description_3',
        'banner'
    ];

}
