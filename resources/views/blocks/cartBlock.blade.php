

<div class="container">
    <h1>Корзина</h1>
    <table class="table">
        <thead>
            <tr>
                <th>Артикул</th>
                <th>Продукт</th>
                <th>Цена</th>
                <th>Количество</th>
            </tr>
        </thead>
        <tbody>
            {{-- <p>{{$shCarts}}</p> --}}
            @foreach ($shCarts as $item)
                <tr>
                    <td>{{ $item->product_id }}</td>
                    <td>{{ $item->productt->product_name }}</td>
                    <td>{{ $item->productt->price }}</td>
                    <td>{{ $item->quantity }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
