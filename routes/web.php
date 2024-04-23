<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MainController; // ПОДКЛЮЧЕНИЕ КОНТРОЛЛЕРА
use App\Http\Controllers\PostController; // ПОДКЛЮЧЕНИЕ КОНТРОЛЛЕРА
use App\Http\Controllers\Page; // ПОДКЛЮЧЕНИЕ КОНТРОЛЛЕРА
use App\Http\Controllers\Test; // ПОДКЛЮЧЕНИЕ КОНТРОЛЛЕРА
use App\Http\Controllers\Employee; // ПОДКЛЮЧЕНИЕ КОНТРОЛЛЕРА
use App\Http\Controllers\UsersController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CountryController;
use App\Http\Controllers\AddUserFormController;
use App\Http\Controllers\NewUserController;




//КР
// пример: http://hostcontroller/index
Route::get('/index', [MainController::class, 'main']);


Route::get('/about', [MainController::class, 'about']);
Route::get('/catalog', [MainController::class, 'catalog']);
Route::get('/location', [MainController::class, 'location']);

// пример: http://hostcontroller/product/:4
Route::get('/product/:{id}', [MainController::class, 'product']);


// Route::get('/', function () {
//     return view("home");
// })->name("home");

// пример: http://hostcontroller/login
// для авторизации
Route::middleware('web')->namespace('\App\Http\Controllers')->group(function () {
	Route::get('/login', function () {
		return view('login');
	});

	Route::post('/login', 'AuthController@postSignin');
});

// пример: http://hostcontroller/reg
//для регистрации
Route::middleware('web')->namespace('\App\Http\Controllers')->group(function () {
	Route::get('/reg', function () {
		return view('reg');
	});

	Route::post('/reg', 'AuthController@postReg');
});


// Route::get('/cart', [MainController::class, 'showCart'])->name('cart.show');


Route::get('/cart', [MainController::class, 'showCart']);



Route::get('/admin', [MainController::class, 'admin']);



Route::get('/admin/categoryAdd', [MainController::class, 'showFormCateg']);
Route::post('/admin/create', [MainController::class, 'storeCateg']);


//удаление категории
Route::get('admin/delCat/{id}', [MainController::class, 'delCateg']);

//удаление продукта
Route::get('admin/productDel/{id}', [MainController::class, 'delProduct']);


//добавдение продукта
Route::get('/admin/postAdd', [MainController::class, 'showFormPost']);
Route::post('/admin/createPost', [MainController::class, 'storePost']);


//не работает
Route::get('admin/changeStatus/{id}', [MainController::class, 'changeStatus']);


//добавление товаров в корзину
Route::post('/cart/add/',  [MainController::class, 'addToCart'])->name('cartAdd');
 

Route::get('/order/confirm-order', [MainController::class, 'confirmOrder']);
Route::post('/order/create', [MainController::class, 'storeOrder']);

 

Route::post('/updateQuantity/{id}', [MainController::class, 'updateQuantity'])->name('updateQuantity');
//Route::post('/updateQuantity/{id}', 'YourController@updateQuantity')->name('updateQuantity');
