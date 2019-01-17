<?php

namespace app\model;
use app\engine\Db;

class Basket extends DbModel
{
    public $idx;
    public $session;
    public $product;

    /**
     * Basket constructor.
     * @param $idx
     * @param $session
     * @param $product
     */
    public function __construct($idx = null, $session = null, $product = null)
    {
        parent::__construct();
        $this->idx = $idx;
        $this->session = $session;
        $this->product = $product;
    }

    public static function getBasket($session) {
        $sql = "SELECT `products`.`idx` as id_prod, `basket`.`idx` as id_basket, `products`.`name`, `products`.`description`, `products`.`image`, `products`.`price` FROM `basket`, `products` WHERE `products`.`idx`=`basket`.`product` AND `session`=:session";
        return Db::getInstance()->queryAll($sql, ['session' => $session]);
    }

    public static function getCount($session) {
        $sql = "SELECT count(*) as count FROM `basket` WHERE `session` = :session";
        return Db::getInstance()->queryOne($sql, ['session' => $session])['count'];
    }

    public static function getTableName()
    {
        return "basket";
    }


}