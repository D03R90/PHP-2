<?php

include "../engine/Autoload.php";

spl_autoload_register([new \app\engine\Autoload(), 'loadClass']);

/*Товар на вес*/
echo"<hr>";
$productWeight = new \app\model\Product_Weight("1", "Корм", "Собачий корм",
    "150", null, "Россия", "12");
echo "Покупка 1 (3 кг): {$productWeight->getPrice(5)} руб.<br>";
echo "Покупка 2 (4.52 кг): {$productWeight->getPrice(4.52)} руб.<br>";
echo "<b>Доход с продаж:</b> {$productWeight->getTotal()} руб.<br><br>";
var_dump($productWeight);

/*Штучный товар*/
echo"<hr>";
$productReal = new \app\model\Product_Real("2", "Ноутбук", "HP 15-bw065ur", 
    "34000", null, "Китай", "4");
echo "Покупка 1 (1 шт): {$productReal->getPrice(1)} руб.<br>";
echo "Покупка 2 (2 шт): {$productReal->getPrice(2)} руб.<br>";
echo "<b>Доход с продаж:</b> {$productReal->getTotal()} руб.<br><br>";
var_dump($productReal);

/*Цифровой товар*/
echo"<hr>";
$productDigital = new \app\model\Product_Digital("3", "Софт", "Какой-то установочный файл программы", 
"1000", null, "Китай", "2");
echo "Покупка 1 (1 шт): {$productDigital->getPrice(1)} руб.<br>";
echo "Покупка 2 (2 шт): {$productDigital->getPrice(2)} руб.<br>";
echo "<b>Доход с продаж:</b> {$productDigital->getTotal()} руб.<br><br>";
var_dump($productDigital);
function sum($products)


{
    $sum = 0;
    foreach ($products as $product) {
        $sum += $product->getTotal();
    }
    return $sum;
}
echo "<hr><b>Доход от продаж:</b> " . sum([$productWeight, $productReal, $productDigital]) . " руб.";
