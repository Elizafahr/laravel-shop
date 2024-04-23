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
    <form method="POST" action="/user/create">
        @csrf
        <label for="name">Имя:</label>
        <input type="text" id="name" name="name">

        <label for="email">Email:</label>
        <input type="email" id="email" name="email">
        <label for="password">Email:</label>
        <input type="text" id="password" name="password">

        <button type="submit">Создать</button>
    </form>

</body>


</html>
