@include('components.header')

<div class="container">
    <form method="POST" action="/admin/editProduct" class="d-flex mt-3 flex-column w-50" enctype="multipart/form-data">
        @csrf
        <input type="hidden" class="form-control" value="{{ $product->product_id }}"  name="product_id">

        <div class="form-group">
            <label for="product_name">Название продукта:</label>
            <input type="text" class="form-control" value="{{ $product->product_name }}" id="product_name" name="product_name">
        </div>

        <input type="hidden" id="category_id" name="category_id" value="2">

        <div class="form-group">
            <label for="description">Описание:</label>
            <input type="text" value="{{ $product->description }}" class="form-control" id="description" name="description">
        </div>

        <div class="form-group">
            <label for="price">Цена:</label>
            <input type="number" value="{{ $product->price }}" class="form-control" id="price" name="price">
        </div>

        <div class="form-group">
            <label for="year_of_production">Год производства:</label>
            <input type="number" value="{{ $product->year_of_production }}" class="form-control" id="year_of_production" name="year_of_production" min="1950" max="2024">
        </div>

        <div class="form-group">
            <label for="страна">Страна:</label>
            <input type="text"  value="{{ $product->страна }}"  class="form-control" id="страна" name="страна">
        </div>

        <div class="form-group">
            <label for="модель">Модель:</label>
            <input type="text"  value="{{ $product->модель }}"  class="form-control" id="модель" name="модель">
        </div>
        <div class="form-group">
            <label for="img">Фото:</label>
            <input type="file" class="form-control-file" id="img" name="img">
        </div>

        <button type="submit" class="btn btn-primary">Изменить</button>
    </form>
</div>

@include('components.footer')
