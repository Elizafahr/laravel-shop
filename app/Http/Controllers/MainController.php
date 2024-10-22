<?php

namespace App\Http\Controllers;

use App\Http\UsersController;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\OrderDetail;
use App\Models\shopping_carts;
use App\Models\Category;
use App\Models\Order;
use App\Models\Cart;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\DB; // подключаем

use function PHPUnit\Framework\isEmpty;

class MainController extends Controller
{



    //осноаная страница
    public function main()
    {
        $Categories = Category::all();
        return view("home")->with(["Categories" => $Categories]);
    }


    // страница о нас
    public function about()
    {
        // $shoppingCarts = shopping_carts::with('products')->get();
        // return view("pages.about")->with(["shoppingCarts" => $shoppingCarts]);
        $latestProducts = Product::latest()->take(3)->get();
        return view('pages.about', compact('latestProducts'));
    }

    // страница продуктп
    public function product($id)
    {
        $products = Product::with('category')->where('product_id', $id)->first();
        $catId = $products->category->category_id;

        return view("pages.productItem")->with(["products" => $products], ["catId" => $catId]);
    }


    // страница местоположение
    public function location()
    {
        return view("pages.location");
    }




    // страница каталога
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

    //отображение корзины 
    public function showCart()
    {
        $carts = Cart::where('client_id', auth()->id())->get();
        $cartIds = $carts->pluck('id')->toArray();

        $shCart = shopping_carts::with('cart')
            ->where('shopping_cart_id_reserve', $cartIds)
            ->get();

        $id = auth()->id();


        // $orders = Order::where('client_id', auth()->id())
        //              ->orderBy('created_at', 'desc')
        //              ->get();

        $orders  = Order::where('client_id', auth()->id())->with('orderDetails')->get();

        //$orders = Auth::user()->orders()->with('orderDetails')->get();


        return view("pages.cart", ["carts" => $carts, "id" => $id, "shCarts" => $shCart, "orders" => $orders]);
    }


    public function destroy(Order $order)
    {
        if ($order->created_at->diffInDays(now()) <= 7) {
            $order->orderDetails()->delete();
            $order->delete();
            return redirect()->route('cart.show')->with('success', 'Заказ удален.');
        } else {
            return redirect()->route('cart.show')->with('error', '7 дней с момента заказа вышло!');
        }
    }




    //изменение количества товара в корзине
    public function updateQuantity(Request $request, $id)
    {
        $shoppingCart = shopping_carts::findOrFail($id);

        if ($request->input('action') === 'increment') {
            $shoppingCart->quantity += 1;
        } elseif ($request->input('action') === 'decrement' && $shoppingCart->quantity > 1) {
            $shoppingCart->quantity -= 1;
        }

        $shoppingCart->save();

        return redirect()->back();
    }


    public function showProductForm()
    {
    }

    //страница админа
    public function admin()
    {
        $Categories = Category::all();


        $query = Product::query();
        $Products = Product::all();
        $orders = Order::all();

        return view("pages.admin")->with(["Categories" => $Categories, "Products" => $Products, "orders" => $orders]);
    }


    //добавление категории
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


    //изменение ппродуктаоста

    // public function showFormPostChange($product_id)
    // {

    //     $product = Product::where('product_id', $product_id)->get();
    //      return view('pages\postFormChange', compact('product'));
    // }

    public function showFormPostChange($product_id)
    {
        // $product = Product::findOrFail($product_id); // Using findOrFail to handle case when product is not found
        $products = Product::where('product_id', $product_id)->get();

        foreach ($products as $product) {
            $product = $product;
        }
        return view('pages.postFormChange', compact('product')); // Change the backslashes to regular slashes
    }

    public function editProduct(Request $request)
    {
        //$product = Product::find($request->product_id);
        $products  = Product::where('product_id', $request->product_id)->get();
        foreach ($products as $product) {
            $product = $product;
        }
        // Обновление информации о товаре
        $product->product_name = $request->product_name;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->year_of_production = $request->year_of_production;
        $product->страна = $request->страна;
        $product->модель = $request->модель;

        // Обновление изображения товара, если загружено новое изображение
        if ($request->hasFile('img')) {
            $image = $request->file('img');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('img'), $imageName);
            $product->img = $imageName;
        }

        $product->save();

        return redirect('/admin');
    }

    //добавление  продукта 
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
        // $product->img = 'required|image|mimes:jpeg,png,jpg,gif|max:2048';



        // Загрузка изображения
        if ($request->hasFile('img')) {
            $img = $request->file('img');
            $imgName = time() . '.' . $img->extension();
            $img->move(public_path('img'), $imgName);
            $product->img = $imgName;
        }



        $product->save();

        return redirect('/admin')->with('success', 'categ created successfully!');
    }


    //удаление категории

    public function delCateg($id)
    {
        $cat = Category::find($id)->delete();
        return redirect('/admin');
    }
    //удаление продукта
    public function delProduct($id)
    {

        DB::table('Products')
            ->where("product_id", $id)
            ->delete();
        return redirect('/admin');
    }





    //смена статуса заказа
    public function changeStatus($id, $status)
    {
        $order = Order::findOrFail($id); // Find the order by ID

        $order->status = $status;
        $order->save();
        return redirect('/admin');
    }


    //добавление товаров в корзину

    public function addToCart(Request $request)
    {
        // Найдем корзину текущего пользователя
        $cart = Cart::where('client_id', auth()->id())->first();
        $product = DB::table('Products')->where("product_id", $request->product_id)->get();
        // Если корзина уже существует, добавим товар в нее
        if ($cart) {
            $shopping_cart = new shopping_carts();
            $shopping_cart->product_id = $request->product_id;
            $shopping_cart->quantity = 1;
            $shopping_cart->shopping_cart_id_reserve = $cart->id;
            $shopping_cart->save();
        } else {
            // Если корзина не существует, создадим новую и добавим товар в нее
            $new_cart = new Cart();
            $new_cart->client_id = auth()->id();
            $new_cart->save();

            $shopping_cart = new shopping_carts();
            $shopping_cart->product_id = $request->product_id;
            $shopping_cart->quantity = 1;
            $shopping_cart->shopping_cart_id_reserve = $new_cart->id;
            $shopping_cart->save();
        }

        return redirect()->back();
    }




    public function confirmOrder()
    {
        // Загрузить товары из корзины для отображения на странице подтверждения
        $carts = Cart::where('client_id', auth()->id())->get();
        $cartIds = $carts->pluck('id')->toArray();
        $cartItems = shopping_carts::with('cart')->whereIn('shopping_cart_id_reserve', $cartIds)->get();
        return view('pages.confirm', ['cartItems' => $cartItems]);
    }

    public function storeOrder(Request $request)
    {
        // Пример сохранения заказа
        $order = new Order;
        $order->client_id = Auth::id();
        $order->order_date = now();
        $order->status = 'Оформлен';
        $order->save();
        $carts = Cart::where('client_id', auth()->id())->get();

        $cartIds = $carts->pluck('id')->toArray();

        $shCarts = shopping_carts::with('cart')->whereIn('shopping_cart_id_reserve', $cartIds)->get();

        foreach ($shCarts as $item) {
            $orderDetail = new OrderDetail;
            $orderDetail->order_id = $order->id;
            $orderDetail->product_id = $item->product_id;
            $orderDetail->quantity = $item->quantity;
            $orderDetail->save();
        }


        $carts = Cart::where('client_id', auth()->id())->get();
        foreach ($carts as $cart) {
            $cart->delete();
        }
        return redirect('/cart');
    }
}
