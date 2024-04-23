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

// // обработчик маршрута http://hostController/pages/all/
// Route::get('/pages/all', [Page::class, 'showAll']);

// // пример: http://hostcontroller/employee
// Route::get('/employee', [MainController::class, 'showEmployee']);

// // пример: http://hostcontroller/user/11
// Route::get('/user/{userAge}', [MainController::class, 'userAge']);



// // // пример: http://hostcontroller/posts
// // Route::get('/posts', [UsersController::class, 'show']);






// // пример: http://hostcontroller/users
// Route::get('/users', [UsersController::class, 'show']);







// // пример: http://hostcontroller/usersFiltr
// Route::get('/usersFiltr', [UsersController::class, 'showFiltr']);



// // пример: http://hostcontroller/post/all
// Route::get('/post/all', [PostController::class, 'getAll']);




// // пример: http://hostcontroller/post/:1
// Route::get('/posts/:{id}', [PostController::class, 'getOne']);


// // пример: http://hostcontroller/post/all/:id/
// Route::get('/post/all/:{order?}', [PostController::class, 'getAllOrder'])->where('order', 'id|title|date');

// // пример: http://hostcontroller/post/all/:id/:desc
// Route::get('/post/all/:{order?}/:{dir?}', [PostController::class, 'getAllOrderSec'])
//     ->where('order', 'id|title|date')
//     ->where('dir', 'asc|desc');




// // пример: http://hostcontroller/post/new
// Route::get('/post/new', [PostController::class, 'newPost'])->name('newPost');
// Route::post('/post/save', [PostController::class, 'savePost'])->name('savePost');


// // пример: http://hostcontroller/posts/:1
// Route::get('/posts/:{id}', [PostController::class, 'change']);



// //15
// // пример: http://hostcontroller/post/edit/4
// Route::match(['get', 'put'], 'post/edit/{id}', [PostController::class, 'editPost']);


// // // пример: http://hostcontroller/post/new/edit
// // Route::get('/post/new/edit', [PostController::class, 'newPost'])->name('newPost');
// // Route::post('/post/save', [PostController::class, 'savePost'])->name('savePost');

// //15
// // пример: http://hostcontroller/post/del/:4
// Route::get('/post/del/:{id}', [PostController::class, 'delPostSec']);


// //15
// // пример: http://hostcontroller/post/deleted
// Route::get('/post/deleted', [PostController::class, 'getDeletedPost']);

// //15
// // пример: http://hostcontroller/post/deleted/:117
// Route::get('/post/deleted/:{id}', [PostController::class, 'restorePost']);



// // пример: http://hostcontroller/country
// Route::get('/country', [countryController::class, 'showsec']);


//КР
//	Реализуйте вывод содержимого таблицы на экран (в табличном виде, путь /user/all/).
// пример: http://hostcontroller/user/all/
Route::get('/user/all', [UserController::class, 'getAll']);

// Route::get('/user/new', [AddUserFormController::class, 'showForm']);
// Route::post('/user/create', [NewUserController::class, 'storeUser']);








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
Route::middleware('web')->namespace('\App\Http\Controllers')->group(function() {
	Route::get('/login', function () {
		return view('login');
	});

	Route::post('/login', 'AuthController@postSignin');
});

// пример: http://hostcontroller/reg
//для регистрации
Route::middleware('web')->namespace('\App\Http\Controllers')->group(function() {
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




// пример: http://hostcontroller/post/del/:4
Route::get('admin/delCat/{id}', [MainController::class, 'delCateg']);

 // пример: http://hostcontroller/post/del/:4
Route::get('admin/productDel/{id}', [MainController::class, 'delProduct']);



Route::get('/admin/postAdd', [MainController::class, 'showFormPost']);
Route::post('/admin/createPost', [MainController::class, 'storePost']);


  Route::get('admin/changeStatus/{id}', [MainController::class, 'changeStatus']);

