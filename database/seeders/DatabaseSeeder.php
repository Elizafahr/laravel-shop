<?php

namespace Database\Seeders;
use Illuminate\Support\Str; // подключаем
use Illuminate\Support\Facades\Hash;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB; // подключаем

use function Laravel\Prompts\password;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {


        // DB::table('users')->insert([
        //     [
        //         'login' => Str::random(10),
        //         'password' =>  Hash::make('12345'),

        //     ],
        //     [
        //         'login' => Str::random(10),
        //         'password' =>  Hash::make('12345'),

        //     ],
        //     [
        //         'login' => Str::random(10),
        //         'password' =>  Hash::make('12345'),

        //     ],
        //     [
        //         'login' => Str::random(10),
        //          'password' =>  Hash::make('12345'),
        //      ],  [
        //         'login' => Str::random(10),
        //         'password' =>  Hash::make('12345'),

        //     ],
        // ]);


        // for ($i = 0; $i < 10; $i++) {
        //     DB::table('users')->insert([
        //         'fio' => ' Фамилия' . ($i + 1). ' Имя' . ($i + 1).' Отчество' . ($i + 1),
        //         'name' => 'name' .($i + 1),
        //         'email' => 'email' .($i + 1).'@gmail.com',
        //         'login' => 'login' .($i + 1),
        //         'password' =>  Hash::make('12345'),
        //         'role' =>  'admin',
        //     ]);
        // }
        // for ($i = 0; $i < 5; $i++) {
        //     DB::table('positions')->insert([
        //         'name' => 'name ' . ($i + 1),
        //     ]);
        // }

        // for ($i = 0; $i < 5; $i++) {
        //     DB::table('posts')->insert([
        //         'title' => 'Заголовок статьи ' . ($i + 1),
        //         'desc' => 'Короткое описание статьи ' . ($i + 1),
        //         'text' => 'Текст статьи ' . ($i + 1),
        //         'date' => now()
        //     ]);
        // }

        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);



        // DB::table('cities')->insert([
        //     [
        //         'name' => 'city',
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ],
        //     [
        //         'name' => 'city',
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ], [
        //         'name' => 'city',
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ], [
        //         'name' => 'city',
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ],
        // ]);


        // DB::table('countries')->insert([
        //     [
        //         'name' => 'country',

        //     ],
        //     [
        //         'name' => 'country',

        //     ], [
        //         'name' => 'country',

        //     ], [
        //         'name' => 'country',

        //     ],
        // ]);


        // DB::table('posts')->insert([
        //     [
        //         'title' => 'First Post',
        //         'slug' => 'first-post',
        //         'likes' => 10,
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ],
        //     [
        //         'title' => 'sec Post',
        //         'slug' => 'sec-post',
        //         'likes' => 11,
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ],
        //     [
        //         'title' => 'third Post',
        //         'slug' => 'third-post',
        //         'likes' => 10,
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ],
        //     [
        //         'title' => 'fourth Post',
        //         'slug' => 'fourth-post',
        //         'likes' => 10,
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ]
        // ]);

        // DB::table('users')->insert([
        //     [
        //         'name' => Str::random(10),
        //         'email' => Str::random(10),
        //         'age' => 25,
        //         'salary' => 50000,
        //         'password' =>  Hash::make('12345'),
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ],
        //     [
        //         'name' => Str::random(10),
        //         'email' => 'bob@example.com',
        //         'age' => 28,
        //         'salary' => 55000,
        //         'password' =>  Hash::make('12345'),
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ],
        //     [
        //         'name' => Str::random(10),
        //         'email' => Str::random(10),
        //         'age' => 27,
        //         'salary' => 52000,
        //         'password' =>  Hash::make('12345'),
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ],
        //     [
        //         'name' => Str::random(10),
        //         'email' => Str::random(10),
        //         'age' => 32,
        //         'password' =>  Hash::make('12345'),
        //         'salary' => 62000,
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ],
        //     [
        //         'name' => Str::random(10),
        //         'email' => Str::random(10),
        //         'age' => 29,
        //         'password' =>  Hash::make('12345'),
        //         'salary' => 58000,
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ]
        // ]);
        // DB::table('user')->insert([
        //     [
        //         'name' => 'John Doe',
        //         'email' => 'john@example.com',
        //         'age' => 25,
        //         'salary' => 50000,
        //         'cityID' => 1,
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ],
        //     [
        //         'name' => 'Bob Johnson',
        //         'email' => 'bob@example.com',
        //         'age' => 28,
        //         'salary' => 55000,
        //         'cityID' => 2,

        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ],
        //     [
        //         'name' => 'Alice Williams',
        //         'email' => 'alice@example.com',
        //         'age' => 27,
        //         'salary' => 52000,
        //         'cityID' => 1,
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ],
        //     [
        //         'name' => 'Michael Wilson',
        //         'email' => 'michael@example.com',
        //         'age' => 32,
        //         'salary' => 62000,
        //         'cityID' => 3,
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ],
        //     [
        //         'name' => 'Emily Brown',
        //         'email' => 'emily@example.com',
        //         'age' => 29,
        //         'cityID' => 1,
        //         'salary' => 58000,
        //         'created_at' => now(),
        //         'updated_at' =>  now(),
        //     ]
        // ]);





    }
}
