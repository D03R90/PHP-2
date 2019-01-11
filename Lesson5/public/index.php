<?php

use app\engine\Autoload;
use app\model\Products;

include "../config/config.php";
include "../engine/Autoload.php";

// подгружаем и активируем авто-загрузчик Twig-а
require_once '../vendor/Twig/Autoloader.php';

Twig_Autoloader::register();

// указывае где хранятся шаблоны
$loader = new Twig_Loader_Filesystem('../vendor/views/layouts');

$twig = new Twig_Environment($loader);



spl_autoload_register([new Autoload(), 'loadClass']);

$controllerName = $_GET['c'] ?: 'product';

$actionName = $_GET['a'];

$controllerClass = CONTROLLER_NAMESPACE . ucfirst($controllerName) . "Controller";

if (class_exists($controllerClass)) {
    $controller = new $controllerClass(new \app\engine\Render());
    $controller->runAction($actionName);
}

?>



 <!-- use app\engine\Autoload;
 use app\model\Products;

 /**
  * @var Products $product
  */

 include "../config/config.php";
 include "../engine/Autoload.php";

 spl_autoload_register([new Autoload(), 'loadClass']);

 $controllerName = $_GET['c'] ?: 'product';

 $actionName = $_GET['a'];

 $controllerClass = CONTROLLER_NAMESPACE . ucfirst($controllerName) . "Controller";

 if (class_exists($controllerClass)) {
     $controller = new $controllerClass(new \app\engine\Render());
     $controller->runAction($actionName);
/} -->

