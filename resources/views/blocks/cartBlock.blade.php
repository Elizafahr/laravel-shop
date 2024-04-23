<div class="container">
    <h1>Корзина</h1>
    <table class="table">
        <thead>
            <tr>
                <th>Артукул</th>
                <th>Продукт</th>
                <th>Цена</th>
                <th>Количество</th>

            </tr>
        </thead>
        <tbody>
             @foreach ($carts as $cart)

                @foreach ($cart->shoppingCarts as $item)
                    <tr>
                         @foreach ($item->product as $product)
                            <td>{{ $product->product_id }}</td>
                            <td>{{ $product->product_name }}</td>
                            <td>{{ $product->price }}</td>
                        @endforeach
                        <td>{{ $item->quantity }}</td>

                    </tr>
                @endforeach
            @endforeach

        </tbody>
    </table>
    


</div>
