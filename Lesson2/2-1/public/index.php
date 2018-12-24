<?php
include "../engine/Autoload.php";

spl_autoload_register([new \app\engine\Autoload(), 'loadClass']);

// $product = new Products(new Db());

$product = new \app\model\Products("1", "Продукт", "Описание", "150");
var_dump($product);

echo"<hr>";
$order = new \app\model\Orders("2", "Продукт", "Описание", "150", "150");
var_dump($order);

echo"<hr>";
$cart = new \app\model\Cart("3", "Продукт", "Описание", "150", "150");
var_dump($cart);

//Тут я не стал делать проект рабочим, в папке 2-2 работающая версия (просто реализован логику пространства имён).