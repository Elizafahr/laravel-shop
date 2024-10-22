<div class="container mt-3">
    <form method="get" class="mb-3">
        <div class="row">
            <div class="col-md-4">
                <label for="sort_by" class="form-label">Сортировать по:</label>
                <select name="sort_by" id="sort_by" class="form-select">
                    <option value="year">По году производства</option>
                    <option value="name">По наименованию</option>
                    <option value="price">По цене</option>
                </select>
            </div>
            <div class="col-md-4">
                <label for="category" class="form-label">Категория:</label>
                <select name="category" id="category" class="form-select">
                    <option value="all" {{ $request->category == 'all' ? 'selected' : '' }}>Все категории</option>
                    @foreach ($categories as $category)
                        <option value="{{ $category->id }}" {{ $request->category == $category->id ? 'selected' : '' }}>
                            {{ $category->category_name }}
                        </option>
                    @endforeach
                </select>
            </div>
            <div class="col-md-4 d-flex align-items-end">
                <button type="submit" class="btn btn-primary">Применить фильтр</button>
            </div>
        </div>
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

                    <form action="{{ route('cartAdd') }}" method="post">
                        @csrf
                        <input type="hidden" name="product_id" value="{{ $product->product_id }}">
                        @auth <button type="submit"
                                class=" d-flex btn w-100 text-align-center justify-content-center btn-primary">Добавить в
                            корзину</button> @endauth
                        <a href="product/:{{ $product->product_id }}"
                            class="btn  btn-outline-primary d-flex btn w-100 mt-1 text-align-center justify-content-center">Посмотреть
                            больше</a>

                    </form>

                </div>
            </div>
        @endforeach
    </div>



</div>
