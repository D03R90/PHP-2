<?php
//подключаем все библиотеки
require_once('../config/config.php');

//получаем URL запроса к сайту и разбиваем его в массив url_array
$url_array = explode("/", $_SERVER['REQUEST_URI']);

//анализируем первое слово после запроса, например в site/news/?id_news=1
//Полученное значение идет в page_name, если зашли в корень сайта
//то page_name="index"
if ($url_array[1] == "")
	$page_name = "index";
else
	$page_name = $url_array[1];


//подготовку переменных вынесли в отдельную функцию
//в нее передаем имя страницы, переменные для которой нужно подготовить
$variables = prepareVariables($page_name);


$isAjax = (isset($_GET['ajax'])) ? true : false;

//строим страницу и выводим ее на экран
//входные данные имя страницы и ассоциотивный массив переменных
echo renderPage($page_name, $variables, $isAjax);
