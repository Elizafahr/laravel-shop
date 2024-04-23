<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstdap@4.3.1/dist/css/bootstdap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<body>
    <table border="1">
        <thead>
            <td>id</td>
            <td>fio</td>
            <td>login</td>
            <td>password</td>
            <td>role</td>
        </thead>
        @foreach ($users as $user)
            <tr>
                <td> {{ $user->id }}</td>
                <td> {{ $user->fio }}</td>
                <td> {{ $user->login }}</td>
                <td> {{ $user->password }}</td>
                <td> {{ $user->role }}</td>
            </tr>
        @endforeach
    </table>
    <a href="http://hostcontroller/user/new">new</a>



    {{-- @if (session('message'))
        <script>
            alert("{{ session('messageDel') }}");
        </script>
    @endif --}}
    {{-- <a href="/users/del/:{{ $users->id }}">{{ $users->id }}</a> --}}
    {{-- <table border="1">
        <thead>
            <td>id</td>
            <td>name</td>
            <td>surname</td>
            <td>login</td>
            <td>password</td>
            <td>users_id</td>
        </thead>
        <tr>
            <td>{{ $users->id }}</td>
            <td>{{ $users->profiles->name }}</td>
            <td>{{ $users->profiles->surname }}</td>
            <td>{{ $users->login }}</td>
            <td>{{ $users->password }}</td>
            <td>{{ $users->profiles->users_id }}</td>
        </tr>
    </table> --}}


    {{-- <table border="1">
        <thead>
            <td>user name</td>
            <td>city</td>
            <td>position</td>
            <td>role</td>


        </thead>
        @foreach ($Users as $user)
            <tr>
                <td>{{ $user->name }}</td>
                <td>{{ $user->city->name }}</td>
                <td>{{ $user->position->name }}</td>
                <td>{{ $user->role->name }}</td>
            </tr>
        @endforeach
    </table> --}}

    {{-- @foreach ($countries as $country)
            <tr>
                <td>{{ $country->name }}</td>
                @foreach ($country->city as $city)
                    <td>{{ $city->name }}</td>
                    <td>{{ $city->people }}</td>
                @endforeach
            </tr>
        @endforeach --}}
    {{-- @foreach ($Users->city as $city)
            <td>{{ $city->name }}</td>
            <td>{{ $city->people }}</td>
        @endforeach --}}
    {{-- @foreach ($Users as $user)
        <tr>


        </tr>
    @endforeach --}}



    {{-- @foreach ($users as $users)
        <div class="row g-0   rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            <div class="col-5 p-4 d-flex flex-column position-static">

                <a href="/users/del/:{{ $users->id }}">{{ $users->id }}</a>

            </div>

        </div>
    @endforeach --}}

</body>


</html>
