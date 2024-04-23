<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB; // подключаем
use Illuminate\Http\Request;
use App\Models\Posts;

class PostController extends Controller
{
    //посты все вывод
    public function getAll()
    {
        $posts = DB::table('posts')
            ->orderBy('date')
            ->get();
        return view("layout")->with(["posts" => $posts]);
    }

    //пост вывод
    public function getOne($id)
    {
        $posts = DB::table('posts')
            ->where('id', $id)
            ->get();
        return view("layout")->with(["posts" => $posts]);
    }

    //пост вывод
    // public function getOne($id)
    // {
    //     $post = DB::table('posts')
    //         ->where('id', $id)
    //         ->first();

    //     if (!$post) {
    //         abort(404);
    //     }

    //     return view("layout")->with(["post" => $post]);
    // }


    //посты с сортировкой
    public function getAllOrder($order = 'date')
    {
        $posts = DB::table('posts')
            ->orderBy($order, 'desc')
            ->get();
        return view("layout")->with(["posts" => $posts]);
    }

    //посты с сортировкой
    public function getAllOrderSec($order = 'date', $dir = 'desc')
    {
        $posts = DB::table('posts')
            ->orderBy($order, $dir)
            ->get();
        return view("layout")->with(["posts" => $posts]);
    }


    //добавление статьи
    public function newPost()
    {
        return view("newPost");
    }

    public function savePost(Request $request)
    {
        $post = new Posts;
        $post->title = $request->input('title');
        $post->desc = $request->input('desc');
        $post->text = $request->input('text');
        $post->date = now();
        $post->save();

        return redirect('/post/all');
    }



    //изменение контента статьи
    public function change($id)
    {

        $title = 'Новый заголовок';
        $desc = 'Новое короткое описание';

        DB::table('posts')
            ->where('id', $id)->update([
                'title' => $title,
                'desc' => $desc
            ]);

        $posts =  DB::table('posts')
            ->get();

        return view("layout")->with(["posts" => $posts]);
    }

    //редактирование бе редиректа
    // public function editPost(Request $request, $id)
    // {
    //     $post = Posts::find($id);
    //     if ($request->has('submit')) {
    //         $post->title = $request->title;
    //         $post->desc = $request->desc;
    //         $post->date = $request->date;
    //         $post->text = $request->text;
    //         $post->save(); // сохраним модель
    //     }
    //     return view('editPost')->with(['post' => $post]);
    // }


    //editPost c выполнялся редирект на список всех записей
    // public function editPost(Request $request, $id)
    // {
    //     $post = Posts::find($id);
    //     if ($request->isMethod('put')) {
    //         $post->title = $request->title;
    //         $post->desc = $request->desc;
    //         $post->date = $request->date;
    //         $post->text = $request->text;
    //         $post->save();
    //         return redirect('/post/all');
    //     }
    //     return view('editPost')->with(['post' => $post]);
    // }

    //редактирование поста с сообщением
    public function editPost(Request $request, $id)
    {
        session(['session' => 'false']);
        $post = Posts::find($id);
        if ($request->isMethod('put')) {
            $post->title = $request->title;
            $post->desc = $request->desc;
            $post->date = $request->date;
            $post->text = $request->text;
            $post->save();
            $request->session();
            session(['session' => 'true']);

            session_start();
            $_SESSION["flash"] =   $post->title . 'id = ' .  $post->id;
            session()->flash('message', 'ID:' . $post->id . ' Заголовок:' . $post->title . ' был обновлен.');

            return redirect('/post/all');
        }
        return view('editPost')->with(['post' => $post]);
    }

    //удаление поста
    // public function delPost($id)
    // {
    //     $posts = DB::table('posts')
    //         ->where("id", $id)
    //         ->get();
    //     return view("del")->with(["posts" => $posts]);
    // }


    //удаление поста с сообщением
    public function delPost($id)
    {
        DB::table('posts')
            ->where("id", $id)
            ->delete();


        $post = Posts::find($id);
        session_start();
        session()->flash('messageDel', 'ID:' . $post->id . ' Заголовок:' . $post->title . ' был обновлен.');
        return redirect('/post/all');
    }




    //тип мягкое удаление
    public function delPostSec($id)
    {
        DB::table('posts')
            ->where("id", $id)
            ->delete();

        $post = Posts::find($id);

        session_start();
        session()->flash('messageDel', 'ID:' . $post->id . ' Заголовок:' . $post->title . ' был обновлен.');


        $posts = Posts::onlyTrashed()->get();
        return view("layout")->with(["posts" => $posts]);
    }

    //удаленные посты
    public function getDeletedPost()
    {
        $posts = Posts::onlyTrashed()->get();
        return view('deleted', ['posts' => $posts]);
    }

    //востановление поста
    public function restorePost($id)
    {
        $post = Posts::withTrashed()->where('id', $id)->restore();
        $posts  = Posts::all();
        return view('layout', ['posts' => $posts]);
    }
}
