<?php

namespace App\Http\Controllers;

use App\Http\UsersController;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\shopping_carts;
use App\Models\Category;
use App\Models\Order;
use App\Models\Cart;
use App\Models\Shopping_cart;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\DB; // подключаем

class MainController extends Controller
{




    // обработчик маршрута http://hostcontroller/smth/{параметр}
    // public function showEmployee()
    // {
    //     $employee = [
    //         ['name' => 'Иван', 'age' => 33, 'salary' => 50000],
    //         ['name' => 'Олег', 'age' => 14, 'salary' => 6000],
    //         ['name' => 'Анна', 'age' => 22, 'salary' => 77000],
    //         ['name' => 'Ольга', 'age' => 23, 'salary' => 10000],
    //     ];


    //     return view('layout', ['employee' => $employee]);
    // }

    // public function userAge($userAge)
    // {
    //     return view("page")->with(["userAge" => $userAge]);
    // }

    // public function about()
    // {
    //     $ShoppingCarts = shopping_carts::all();
    //     return view("pages.about")->with(["ShoppingCarts" => $ShoppingCarts]);
    // }


    public function main()
    {
        $Categories = Category::all();
        return view("home")->with(["Categories" => $Categories]);
    }


    public function about()
    {
        $shoppingCarts = shopping_carts::with('products')->get();
        return view("pages.about")->with(["shoppingCarts" => $shoppingCarts]);
    }




    public function product($id)
    {
        $products = Product::with('category')->where('product_id', $id)->first();
        $catId = $products->category->category_id;

        return view("pages.productItem")->with(["products" => $products], ["catId" => $catId]);
    }


    public function location()
    {
        return view("pages.location");
    }




    public function catalog(Request $request)
    {
        $query = Product::query();

        // Фильтрация по категории
        if ($request->has('category') && $request->category != 'all') {
            $query->where('category_id', $request->category);
        }

        // Сортировка
        switch ($request->sort_by) {
            case 'year':
                $query->orderBy('year_of_production', 'desc');
                break;
            case 'name':
                $query->orderBy('product_name', 'asc');
                break;
            case 'price':
                $query->orderBy('price', 'asc');
                break;
            default:
                $query->orderBy('updated_at', 'desc');
        }

        $Products = $query->get();
        $categories = Category::all();

        return view("pages.catalog", ["Products" => $Products, "categories" => $categories, "request" => $request]);
    }

    public function showCart()
    {

        $carts = Cart::where('client_id', auth()->id())->get();
        $id = auth()->id();
        return view("pages.cart", ["carts" => $carts],  ["id" => $id]);
    }



    public function showProductForm()
    {
    }
    public function admin()
    {
        $Categories = Category::all();


        $query = Product::query();
        $Products = Product::all();
        $orders = Order::all();

        return view("pages.admin")->with(["Categories" => $Categories, "Products" => $Products, "orders" => $orders]);
    }




    public function showFormCateg()
    {
        return view('pages.categForm');
    }
    public function storeCateg(Request $request)
    {
        // $Categories = Category::all();

        $Category = new Category();
        $Category->category_name = $request->category_name;
        $Category->save();

        return redirect('/admin')->with('success', 'categ created successfully!');
    }




    public function showFormPost()
    {
        return view('pages.postForm');
    }
    public function storePost(Request $request)
    {
        // $Categories = Category::all();

        $product = new Product();
        $product->product_name = $request->product_name;
        $product->category_id  = $request->category_id;
        $product->price = $request->price;
        $product->description = $request->description;
        $product->year_of_production = $request->year_of_production;
        $product->страна = $request->страна;
        $product->модель = $request->модель;
        $product->save();

        return redirect('/admin')->with('success', 'categ created successfully!');
    }



    public function delCateg($id)
    {
        $cat = Category::find($id)->delete();
        return redirect('/admin');
    }

    public function delProduct($id)
    {
        // $cat = Product::find($id)->delete();

        DB::table('Products')
            ->where("product_id", $id)
            ->delete();
        return redirect('/admin');
    }




    public function changeStatus($id)
    {
        DB::table('Orders')
            ->where("order_id", $id)->get();
        return redirect('/admin');
    }
}
