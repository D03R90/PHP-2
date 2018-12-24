<?php
include "../engine/Autoload.php";

spl_autoload_register([new \app\engine\Autoload(), 'loadClass']);

// $product = new Products(new Db());

$product = new \app\model\Products("1", "Продукт", "Описание","150");
var_dump($product);
