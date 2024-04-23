<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\DB; // подключаем
use Illuminate\Http\Request;
use App\Models\Category;

class UserController extends Controller
{
    public function getAll()
    {
        $users = DB::table('users')->get();
        $Categories = Category::all();
        return view("layout")->with(["users" => $users]);
    }
}
