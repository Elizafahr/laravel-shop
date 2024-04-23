<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>document</title>

</head>

<body>

    <body>
        @if ($userAge > 18)
            <p> Ваш возраст - {{ $userAge }}</p>
        @else
            <p>Вы несовершеннолетний</p>
        @endif
    </body>

</body>

</html>
