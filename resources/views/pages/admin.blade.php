@include('components.header')

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
                    <a href="product/:{{ $product->product_id }}" class="btn ">Просмотреть товар</a>
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
