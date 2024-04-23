@include('components.header')
<div class="container">
    <div class="row justify-content-center">
        <form method="POST" action="login"  >
            {!! csrf_field() !!}
            <div class="form-group">
                <label for="login">Login</label>
                <input class="form-control" type="text" name="login" id="login" style="margin-top: 10px;">
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input class="form-control" type="password" name="password" id="password" style="margin-top: 10px;">
            </div>

            <button class="btn btn-primary" type="submit" style="margin-top: 10px;">Login</button>
            <br>
            <br>
            <a href="reg">Registration</a>
        </form>
    </div>
</div>

    @include('components.footer')
