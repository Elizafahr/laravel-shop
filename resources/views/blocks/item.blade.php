<div class="container mt-3">
    <div class="row">
        <div class="col-md-6">
            <img style="max-height: 250px" src="{{ asset('img/' . $products->img) }}" alt="{{ $products->img }}">
        </div>
        <div class="col-md-6">
            <h2>{{ $products->products_name }}</h2>
            <p>Категория: {{ $products->category->category_name }}</p>
            <p>Цена: {{ $products->price }}</p>
            <p>Описание: {{ $products->description }}</p>
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <th>Характеристика</th>
                        <th>Значение</th>
                    </tr>
                    <tr>
                        <td>Страна</td>
                        <td>{{ $products->страна }}</td>
                    </tr>
                    <tr>
                        <td>Модель</td>
                        <td>{{ $products->модель }}</td>
                    </tr>
                    <tr>
                        <td>Год изготовления</td>
                        <td>{{ $products->year_of_production }}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
