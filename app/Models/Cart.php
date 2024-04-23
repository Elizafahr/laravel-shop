<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{

    public function shoppingCarts()
    {
        // return $this->hasMany(shopping_carts::class);
        return $this->hasMany(shopping_carts::class, 'shopping_cart_id', 'shopping_cart_id');
    }
}
