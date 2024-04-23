<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB; // подключаем

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('user')->insert([
            [
                'fio' => 'Иванов Иван Иванович',
                'login' => 'ivanov',
                'password' => bcrypt('123456'),
                'role' => 'admin',
            ],
            [
                'fio' => 'Петров Петр Петрович',
                'login' => 'petrov',
                'password' => bcrypt('password'),
                'role' => 'manager',
            ],
            [
                'fio' => 'Сидоров Сидор Сидорович',
                'login' => 'sidorov',
                'password' => bcrypt('qwerty'),
                'role' => 'user',
            ]
        ]);
    }
}
