<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;
    //  // обработчик маршрута http://host/
	// public function acIndex () {
	// 	echo "<h1>Главная страница</h1>";
	// }

	// // обработчик маршрута http://host/about
	// public function acAbout () {
	// 	echo "<h1>Страница: О нас</h1>";
	// }

	// // обработчик маршрута http://host/contacts
	// public function acContacts () {
	// 	echo "<h1>Страница: Контакты</h1>";
	// }

	// // обработчик маршрута http://host/music
	// public function acMusic () {
	// 	echo "<h1>Страница: Музыкальный портал</h1>";
	// }

	// // обработчик маршрута http://host/music/teams
	// public function acTeams () {
	// 	echo "<h1>Страница: Группы</h1>";
	// }

	// // обработчик маршрута http://host/music/albums
	// public function acAlbums () {
	// 	echo "<h1>Страница: Альбомы</h1>";
	// }

	// // обработчик маршрута http://host/music/tracks
	// public function acTracks () {
	// 	echo "<h1>Страница: Трэки</h1>";
	// }

}
