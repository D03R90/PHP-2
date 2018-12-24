<?php

/*Абстрактный продукт*/
namespace app\model;
abstract class Product_Abstract extends Model
{
    public $article;
    public $category;
    public $title;
    public $price;
    public $guarantee;
    public $country;
    public $count;
    public $total;
    public function __construct($article = null, $category = null, $title = null, $price = null, $guarantee = null, $country = null, $count = null)
    {
        parent::__construct();
        $this->article = $article;
        $this->category = $category;
        $this->title = $title;
        $this->price = $price;
        $this->guarantee = $guarantee;
        $this->country = $country;
        $this->count = $count;
    }
    abstract public function getPrice($number);
    public function getTotal(){
        return $this->total;
    }
}