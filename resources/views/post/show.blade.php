<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>document</title>

</head>

<body>
    <table>
        <tr>
            <th>id</th>
            <th>Username</th>
            <th>Salary</th>
            <th>Email</th>
            <th>age</th>
            <th>
                CityId
            </th>
        </tr>
        @foreach ($users as $user)
            <tr>
                <td>{{ $user->id }}</td>
                <td>{{ $user->name }}</td>
                <td>{{ $user->salary }}</td>
                <td>{{ $user->email }}</td>
                <td>{{ $user->cityId }} </td>
                <td>{{ $user->age }}</td>
            </tr>
        @endforeach
    </table>

</body>

</html>
