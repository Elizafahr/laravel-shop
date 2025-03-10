<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shop</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    {{-- <link rel="stylesheet" href="../resources/css/app.css"> --}}

    <style>
        #carouselExampleIndicators {
            height: 300px !important;
        }
    </style>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container" class="container-fluid">
                <a class="navbar-brand" href="{{ url('index') }}">Copy Star</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('/') ? 'active' : '' }}"
                                href="{{ url('index') }}">Главная</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('about') ? 'active' : '' }}"
                                href="{{ url('about') }}">О нас</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('catalog') ? 'active' : '' }}"
                                href="{{ url('catalog') }}">Каталог</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('location') ? 'active' : '' }}"
                                href="{{ url('location') }}">Где нас найти</a>
                        </li>
                    </ul>

                    @auth
                    <a class="btn btn-outline-success" href="{{ route('logout') }}" style="margin-left: 10px">Выйти</a>
                        <a class="btn btn-outline-success" href="{{ url('cart') }}" style="margin-left: 10px">Корзина</a>
                    @else
                        <a class="btn btn-outline-success" href="{{ url('login') }}" style="margin-left: 10px">Войти</a>
                    @endauth
                </div>
            </div>
        </nav>
    </header>