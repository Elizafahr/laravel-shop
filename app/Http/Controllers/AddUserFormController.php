<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\DB; // подключаем
use Illuminate\Http\Request;
use App\Models\Users;
use App\Models\Profiles;

class AddUserFormController extends Controller
{
    public function showForm()
    {
        return view('user.new');
    }
}
