<?php

namespace App\Http\Controllers;

use App\Models\Client;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Category;

class AuthController extends Controller
{
    // метод для авторизации
    public function postSignin(Request $request)
    {
        if (!Auth::attempt($request->only('login', 'password'))) {
            var_dump($request);

            echo Auth::user();

            echo   $request;
            echo  'Неправильный логин или пароль';
        } else {
            if (Auth::user()->role_id == 1) {
                return redirect('/admin');
            } else {
                return redirect('/index');
            }
            // echo 'Вы успешно авторизовались';
        }
    }
    //метод для регистрации
    public function postReg(Request $request)
    {
        $client = User::create([
            'surname'     => $request->input('surname'),
            'patronymic'     => $request->input('patronymic'),
            'name'     => $request->input('name'),
            'password' =>  bcrypt($request->input('password')),
            'login'     => $request->input('login'),
            'email'     => $request->input('email'),
            'role_id' =>  1
        ]);

        Auth::loginUsingId($client->id);
        $user = User::find($client->client_id);
        echo $user;
        return redirect('/index')
            ->with('success', 'Вы успешно зарегистрировались');
    }
    public function logout()
    {
        Auth::logout(); // Выход пользователя
        return redirect('/index'); // Перенаправление на страницу входа
    }
}
