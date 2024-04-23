<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\DB; // подключаем
use Illuminate\Http\Request;
use App\Models\Users;
use App\Models\Profiles;
use App\Models\Category;

class UsersController extends Controller
{
    // public function show()
    // {
    //     // $users = User::all();
    //     // //  dump($users->profiles);
    //     // return view("layout")->with(["users" => $users]);

    //     $Profiles = Profiles::find(1);
    //     dump($Profiles);
    //     dump($Profiles->Users);
    //     return view("layout")->with(["users" => $Profiles]);

    // }


}
