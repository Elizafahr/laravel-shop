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
                                href="{{ url('admin') }}">Главная</a>
                        </li>
                       
                    </ul>

                    @auth
                    <a class="btn btn-outline-success" href="{{ route('logout') }}" style="margin-left: 10px">Выйти</a>
                     @else
                        <a class="btn btn-outline-success" href="{{ url('login') }}" style="margin-left: 10px">Войти</a>
                    @endauth
                </div>
            </div>
        </nav>
    </header>
<div class="container d-flex flex-column mt-3">
    <h2>Категории товаров</h2>
    <div class="d-flex flex-wrap  gap-3 categories">
        @foreach ($Categories as $Category)
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">{{ $Category->category_name }}</h5>
                </div>

                <a href="admin/delCat/{{ $Category->id }}">del</a>
            </div>
        @endforeach

    </div>
</div>
@include('blocks.add')
<div class="container mt-4">
    <div class="d-flex flex-wrap gap-3">
        @foreach ($Products as $product)
            <div class="card" style="width: 18rem;">
                <div class="card-img-top d-flex  justify-content-center">
                    <img style="max-height: 200px; object-fit: cover;" src="{{ asset('img/' . $product->img) }}"
                        alt="{{ $product->img }}">
                </div>
                <div class="card-body">
                    <h5 class="card-title"> {{ $product->product_name }}</h5>
                    <p class="card-text">{{ $product->description }}</p>
                    <a href="admin/productDel/{{ $product->product_id }}" class="btn ">Удалить</a>
                    {{-- <a href="product/change/:{{ $product->product_id }}" class="btn ">Изменить</a> --}}
                    <a href="{{ route('editProductForm', ['product_id' => $product->product_id]) }}" class="btn">Изменить</a>
                    {{-- <a href="{{ route('editProductForm', ['product_id' => $product->product_id]) }}" class="btn">Изменить</a> --}}
                </div>
            </div>
        @endforeach
    </div>

</div>

<div class="container mt-3">
    <h3>Заказы</h3>
    <table class="table">
        <thead>
            <tr>
                <th>Артукул заказа</th>
                <th>Дата заказа</th>
                <th>Статус</th>
                <th> </th>

            </tr>
        </thead>
        <tbody>
            @foreach ($orders as $order)
                <tr>

                    <td class="card-title"> {{ $order->id }}</td>
                    <td class="card-title"> {{ $order->order_date }}</td>
                    <td class="card-title"> {{ $order->status }}</td>
                    <td class="list-group list-group-horizontal">
                        <a href="admin/changeStatus/{{ $order->id }}/approved" class="list-group-item">status на
                            одобрен</a>
                        <a href="admin/changeStatus/{{ $order->id }}/delivered" class="list-group-item">status на
                            доставлен</a>
                        <a href="admin/changeStatus/{{ $order->id }}/rejected" class="list-group-item">status на
                            отклонен</a>
                    </td>

                </tr>
            @endforeach
        </tbody>
    </table>

</div>


</div>


@include('components.footer')
