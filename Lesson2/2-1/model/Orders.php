<?php

// Заказы
namespace app\model;

class Orders extends Model
{
    public $id;
    public $name;
    public $description;
    public $price;
    public $number;

    public function getTableName()
    {
        return "orders";
    }

}