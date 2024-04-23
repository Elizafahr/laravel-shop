@include('components.header')
<div class="">
    <form method="POST" action="/admin/create">
        @csrf
        <label for="category_name">Название:</label>
        <input type="text" id="category_name" name="category_name">

        <button type="submit">Создать</button>
    </form>

</div>
@include('components.footer')
