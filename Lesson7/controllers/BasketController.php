<?php

namespace app\controllers;
use app\engine\Request;
use app\model\Basket;

class BasketController extends Controller
{
    public function actionIndex() {

        echo $this->render('basket', [
            'products' => Basket::getBasket(session_id())]);
    }

    public function actionDelete() {

        $basket = Basket::getOne((new Request())->getParams()['idx']);
        if (session_id() == $basket->session) {
            $basket->delete();
        }



        echo json_encode(['response' => 1]);
    }
}