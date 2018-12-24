<?php

// Корзина
namespace app\model;

class Cart extends Model
{
    public $id;
    public $name;
    public $description;
    public $price;
    public $number;

    public function getTableName()
    {
        return "cart";
    }

}