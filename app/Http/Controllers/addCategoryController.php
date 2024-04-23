<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\DB; // подключаем
use Illuminate\Http\Request;
use App\Models\Users;
use App\Models\Profiles;
use App\Models\Category;

class NewUserController extends Controller
{

    public function showForm()
    {
        return view('user.new');
    }
    public function storeUser(Request $request)
    {
        $Categories = Category::all();

        $user = new User();
        $user->fio = $request->name;
        $user->login = $request->email;
        $user->password = $request->password;
        $user->role =  "admin";
        $user->save();

        return redirect('/user/all')->with('success', 'User created successfully!');
    }


    public function getAll()
    {
        $users = DB::table('users')->get();
        $Categories = Category::all();
        return view("layout")->with(["users" => $users]);
    }
}
