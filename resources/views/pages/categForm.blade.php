@include('components.header')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form method="POST" action="/admin/create">
                @csrf
                <div class="form-group">
                    <label for="category_name">Название:</label>
                    <input type="text" class="form-control" id="category_name" name="category_name">
                </div>
                <button type="submit" class="btn btn-primary">Создать</button>
            </form>
        </div>
    </div>
</div>

@include('components.footer')
