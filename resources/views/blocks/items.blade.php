<form method="get" class="mb-3">
    <select name="sort_by" id="sort_by">
        <option value="year">По году производства</option>
        <option value="name">По наименованию</option>
        <option value="price">По цене</option>
    </select>
    <select name="category" id="category">
        <option value="all" {{ $request->category == 'all' ? 'selected' : '' }}>all</option>
        @foreach ($categories as $category)
            <option value="{{ $category->id }}" {{ $request->category == $category->id ? 'selected' : '' }}>
                {{ $category->category_name }}
            </option>
        @endforeach
    </select>
    <button type="submit">Применить фильтр</button>
</form>


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
                {{-- <a href="/cart/add/{{ $product->product_id }}" class="btn btn-primary">Add to cart</a> --}}
                {{-- <form action="">
                    <input type="hidden" name="productId" value="{{$product->product_id}}">
                </form> --}}
                <form action="{{ route('cartAdd') }}" method="post">
                    @csrf
                    <input type="hidden" name="product_id" value="{{ $product->product_id }}">
                    <button type="submit" class=" d-flex btn w-100 text-align-center justify-content-center btn-primary">Добавить в корзину</button>
                    <a href="product/:{{ $product->product_id }}" class="btn   d-flex btn w-100 text-align-center justify-content-center">Посмотреть больше</a>

                </form>
            </div>
        </div>
    @endforeach
</div>


{{-- добавить в бд поля характерисики товаров - в дальнейшем выводить их --}}
