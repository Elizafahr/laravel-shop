<h3 class="container mt-4">Последние добавленные товары</h3>
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
            aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
            aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
            aria-label="Slide 3"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-current="true"
            aria-label="Slide 4"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4"
            aria-label="Slide 5"></button>


    </div>
    <div class="carousel-inner mt-4">
        @foreach ($shoppingCarts as $shoppingCart)
            @if ($shoppingCart->shopping_cart_id == 1)
                <div class="carousel-item active  ">
                    <div class="d-flex justify-content-center">
                        @foreach ($shoppingCart->products as $product)
                            <div class="flex">
                                <td>{{ $product->product_name }}</td>
                                <img style="max-height: 250px" src="{{ asset('img/' . $product->img) }}"
                                    alt="{{ $product->img }}">
                            </div>
                        @endforeach
                    </div>

                </div>
            @else
                <div class="carousel-item">
                    <div class="d-flex justify-content-center">
                        @foreach ($shoppingCart->products as $product)
                            <div class="flex">
                                <td>{{ $product->product_name }}</td>
                                <img style="max-height: 250px" src="{{ asset('img/' . $product->img) }}"
                                    alt="{{ $product->img }}">
                            </div>
                        @endforeach
                    </div>
                </div>
            @endif
        @endforeach
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
        data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"> <svg width="25px" height="35px" viewBox="0 0 24 24" fill="none"
                xmlns="http://www.w3.org/2000/svg">
                <path d="M4 12H20M4 12L8 8M4 12L8 16" stroke="#000000" stroke-width="2" stroke-linecap="round"
                    stroke-linejoin="round" />
            </svg></span>
        <span class="visually-hidden">
           </span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
        data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true">
            <svg width="25px" height="35px"
                viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M4 12H20M20 12L16 8M20 12L16 16" stroke="#000000" stroke-width="2" stroke-linecap="round"
                    stroke-linejoin="round" />
            </svg></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
