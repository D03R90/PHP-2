<?php
use app\engine\Autoload;
use app\model\Products;

 /**
  * @var Products $product
  */


include "../config/config.php";
include "../engine/Autoload.php";

spl_autoload_register([new Autoload(), 'loadClass']);

$controllerName = $_GET['c'] ?: "Auth";
// Action
$actionName = $_GET['a']  ?: "Login";

// Формируем название класса из полученных значений
$controllerClass = CONTROLLERS_NAMESPACE . ucfirst($controllerName) . "Controller";

// Создаем экземпляр контроллера
$controller = new $controllerClass();
$controller->run($actionName);