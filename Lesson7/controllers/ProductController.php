<?php


namespace app\controllers;

use app\engine\Request;
use app\model\Basket;
use app\model\Products;

class ProductController extends Controller
{

    public function actionBuy() {

            (new Basket(null, session_id(), (new Request())->getParams()['idx']))->save();

           echo json_encode(['response' => 1]);

    }

    public function actionCatalog() {
        $products = Products::getAll();

        echo json_encode(['goods' => $products], JSON_NUMERIC_CHECK);
    }

    public function actionIndex() {

         echo $this->render('catalog', [
            'products' => Products::getAll(),
            'count' => Basket::getCount(session_id())

        ]);
    }

    public function actionCard() {

        $product = Products::getOne($_GET['id']);
        if (!$product) {
           throw new \Exception('Продукт не найден', 404);
        };
        echo $this->render('card', [
            'product' => $product,
            'count' => Basket::getCount(session_id())
            ]);
    }


}