<?php

namespace app\controllers;
use app\model\Products;
class ProductController extends Controller

{
    // Action выполняемый по default
    public function actionIndex()
    {
        echo "Catalog";
    }

    public function actionCard()
    {
        $this->useLayout = false;
        // Получаем id продукта
        $id = $_GET['id'];
        if ($id) {
            $product = Products::getOne($id);
            echo $this->render("card", ['product' => $product]);
        } else {
            $products = Products::getAll();
            foreach ($products as $product ) {
                echo $this->render("card", ['product' => $product]);
            }
        }
    }
}