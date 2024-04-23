{{-- <h2> {{ $products }}</h2> --}}

     <img style="max-height: 250px" src="{{ asset('img/' . $products->img) }}" alt="{{ $products->img }}">
    <h2>{{ $products->products_name }}</h2>
    <p>Категория: {{ $products->category->category_name }}</p>
    <p>Цена: {{ $products->price  }}</p>
    <p>Описание: {{ $products->description }}</p>
