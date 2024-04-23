



 <form  method="get" class="mb-3">
    <select name="sort_by" id="sort_by">
        <option value="year">По году производства</option>
        <option value="name">По наименованию</option>
        <option value="price">По цене</option>
    </select>
    <select name="category" id="category">
       <option value="all" {{ $request->category == "all" ? 'selected' : '' }}>all</option>
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
                <a href="#" class="btn btn-primary">Add to cart</a>
                <a href="product/:{{ $product->product_id }}" class="btn ">View more</a>
            </div>
        </div>
    @endforeach
</div>


{{-- добавить в бд поля характерисики товаров - в дальнейшем выводить их --}}
