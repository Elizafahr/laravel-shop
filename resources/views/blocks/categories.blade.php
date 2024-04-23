<div class="container d-flex flex-column mt-3">
    <h2>Категории товаров</h2>
    <div class="d-flex flex-wrap  gap-3 categories">
        @foreach ($Categories as $Category)
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">{{ $Category->category_name }}</h5>
                </div>
            </div>
        @endforeach

    </div>
</div>
