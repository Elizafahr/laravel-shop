@include('components.header')
<div class="">
    <form method="POST" action="/admin/createPost" class="d-flex flex-column w-50">
        @csrf


        <label for="product_name">product_name:</label>
        <input type="text" id="product_name" name="product_name">

         <input type="hidden" id="category_id " name="category_id" value="2">

         <label for="description">description:</label>
         <input type="text" id="description" name="description">

         <label for="price">price:</label>
        <input type="text" id="price" name="price">

        <label for="year_of_production">year_of_production:</label>
        <input type="text" id="year_of_production" name="year_of_production">

        <label for="страна">страна:</label>
        <input type="text" id="страна" name="страна">

        <label for="модель">модель:</label>
        <input type="text" id="модель" name="модель">



        <button type="submit">Создать</button>
    </form>

</div>
@include('components.footer')
