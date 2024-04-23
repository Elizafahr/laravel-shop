<?php

namespace App\Http\Controllers;

use App\Models\Cities;
use App\Models\Countries;
use App\Models\Country;
use Illuminate\Support\Facades\DB; // подключаем
use Illuminate\Http\Request;
use App\Models\Posts;
use App\Models\Users;

class CountryController  extends Controller
{
    //посты все вывод
    public function getAll()
    {
        $posts = DB::table('posts')
            ->orderBy('date')
            ->get();
        return view("layout")->with(["posts" => $posts]);
    }

    public function show()
    {
        // $qb = Countries::find(1)->Cities();
        // dump($qb);

        // $qb = Countries::all();
        // dump($qb);



        $qb = Countries::all();
        // ->orderBy('name')
        // ->get();

        // return view("layout")->with(["cities" => $qb]);


        $countries = Countries::all()
            ->city()
            // ->orderBy('name')
            ->get();
        return view("layout")->with(["countries" => $countries]);

        // 	dump($posts);
        // $countries = DB::table('countries')
        //     ->orderBy('name')
        //     ->get();
        // $countries = Country::find(1)->Cities();
        // return view("layout")->with(["countries" => $countries]);

        // dump($qb);


        // $users = User::all();
        // //  dump($users->profiles);
        // return view("layout")->with(["users" => $users]);

        // $countries = Countries::find(1);
        // // dump($countries);
        // // dump($Profiles->Users);
        // return view("layout")->with(["countries" => $countries]);
    }
    // public function sshow()
    // {
    //     // $users = User::all();
    //     // //  dump($users->profiles);
    //     // return view("layout")->with(["users" => $users]);

    //     $Profiles = Profiles::find(1);
    //     dump($Profiles);
    //     dump($Profiles->Users);
    //     return view("layout")->with(["users" => $Profiles]);
    // }


    public function showsec()
    {
        // $category = Countries::find(1);
        // dump($category->city); // коллекция постов


        //     $countries = Countries::all();
        //     foreach ($countries as $country) {
        //         dump($country->name);

        //         $cn = $country->name;

        //         foreach ($country->city as $city) {
        //             dump($city->name);
        //             dump($city->id);
        //         }
        //     }
        // return view("layout")->with(["countries" => $countries],  /*["ci" => $country->city->id], ["cityn" => $country->city->name]*/);


        // $Countries = Countries::orderBy('people', 'desc')->get();
        // return view("layout")->with(["countries" => $Countries]);



        // $Cities = Cities::orderBy('people', 'desc')->get();
        // $Countries = Countries::all();
        // return view("layout")->with(["countries" => $Countries], ["cities" => $Cities]);



        // $Users = Users::all();
        // dump($Users);
        // return view("layout")->with(["Users" => $Users]);


        // dump($Users->city);
        // dump($Users->position);
    }
}
