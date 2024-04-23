<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Page extends Controller
{
    // обработчик маршрута http://hostController/pages/all/
    public function showAll()
    {
        echo "Это строка в функции showAll";
    }



}
