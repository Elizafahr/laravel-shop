<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>document</title>

</head>

<body>


    <form method="POST" action="{{ route('savePost') }}">
        @csrf
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" class="form-control" id="title" name="title">
        </div>
        <div class="form-group">
            <label for="desc">Description</label>
            <input type="text" class="form-control" id="desc" name="desc">
        </div>
        <div class="form-group">
            <label for="text">Text</label>
            <textarea class="form-control" id="text" name="text"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</body>

</html>
