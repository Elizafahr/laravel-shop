<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasApiTokens, HasFactory, Notifiable;
    public function cart()
    {
        return $this->belongsTo(shopping_carts::class);
    }
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
