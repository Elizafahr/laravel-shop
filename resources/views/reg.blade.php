@include('components.header')

<body>
    <div class="container">
        <div class="row">
            <form method="POST" action="reg">
                {!! csrf_field() !!}
                <div class="form-group">
                    <label for="name">Name</label>
                    <input class="form-control" type="text" name="name" id="name">
                </div>
                <div class="form-group">
                    <label for="surname">Surname</label>
                    <input class="form-control" type="text" name="surname" id="surname">
                </div>
                <div class="form-group">
                    <label for="patronymic">Patronymic</label>
                    <input class="form-control" type="text" name="patronymic" id="patronymic">
                </div>
                <div class="form-group">
                    <label for="login">Login</label>
                    <input class="form-control" type="text" name="login" id="login">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input class="form-control" type="text" name="email" id="email">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input class="form-control" type="password" name="password" id="password">
                </div>
                <input class="form-control" type="hidden" value="2" name="role_id" id="role_id">
                <div class="form-group">
                    <button class="btn btn-primary mt-3" type="submit">Register</button>
                </div>
            </form>
        </div>
    </div>
    <script src="js/app.js"></script>
    @include('components.footer')
