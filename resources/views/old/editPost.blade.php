<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<body>
    <form action="" class="d-flex flex-column w-50" method="POST">
        @csrf
        <input type="hidden" name="_method" value="PUT"> <!--скрытое поле для метода PUT -->
        <input type="text" name="title" value="{{ $post->title }}">
        <input type="text" name="desc" value="{{ $post->desc }}">
        <input type="text" name="date" value="{{ $post->date }}">
        <textarea name="text">{{ $post->text }}</textarea>
        {{-- <input type="submit" name="submit" value="Submit"> --}}
        <button type="submit"  name="submit"  class="btn btn-primary">Submit</button>
        <a href="/post/del/:{{ $post->id }}">Удалить</a>
    </form>

</body>


</html>
