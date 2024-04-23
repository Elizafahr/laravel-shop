{{-- @include('components.header') --}}
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
                <a class="navbar-brand" href="../index">Copy Star</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="../index">Главная</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../about">О нас</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../catalog">Каталог</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../location">Где нас найти</a>
                        </li>

                    </ul>
                    @auth
                        <a class="  btn btn-outline-success" href="cart" style="margin-left: 10px">Корзина</a>
                    @endauth
                    {{-- <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form> --}}
                    <a class="  btn btn-outline-success" href="login" style="margin-left: 10px">Войти</a>

                </div>
            </div>
        </nav>
    </header>


    @include('blocks.item')

    @include('components.footer')
