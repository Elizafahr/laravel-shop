<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Model;

class shopping_carts extends Model
{
    use HasApiTokens, HasFactory, Notifiable;
    // public function cart()
    // {
    //     return $this->hasMany(Product::class);
    // }

    public function cart()
    {
        return $this->belongsTo(Cart::class);
    }
    public function product()
    {
        //return $this->hasMany(Product::class);

       return $this->hasMany(Product::class, 'product_id', 'product_id');
    }
    public function products()
    {
        //return $this->hasMany(Product::class);

       return $this->hasMany(Product::class, 'product_id', 'product_id');
    }
}
