@include('components.header')
<div class="container">

    <form id="orderForm" action="/order/create" method="post">
        @csrf
        <div class="mb-3">
            <label for="password" class="form-label">Пароль</label>
            <input type="password" name="password" class="form-control" id="password" required>
            <div id="passwordError" class="invalid-feedback">
                Неверный пароль.
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Подтвердить</button>
    </form>
</div>




@include('components.footer')
