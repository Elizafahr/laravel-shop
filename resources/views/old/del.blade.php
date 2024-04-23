<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>document</title>

</head>

<body>

        @foreach ($posts as $post)
        <div class="row g-0   rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            <div class="col-5 p-4 d-flex flex-column position-static">
                <strong class="d-inline-block mb-2 text-primary">{{ $post->date }}</strong>
                <h3 class="mb-0"><a href="/posts/:{{ $post->id }}">{{ $post->title }}</a></h3>
                <div class="mb-1 text-muted">{{ $post->desc }}</div>
                <p class="card-text mb-auto">{{ $post->text }}</p>
                <a href="/post/edit/{{ $post->id }}">Редактировать</a>
                <a href="/post/edit/{{ $post->id }}">Удалить</a>
                {{-- <a href="/post/del/:{{ $post->id }}">Удалить</a> --}}
            </div>

        </div>
    @endforeach
 </body>

</html>
