<?php

include "../config/main.php";
include "../services/Autoload.php";

spl_autoload_register([new \app\services\Autoload(), 'loadClass']);
$db = \app\services\Db::getInstance();
var_dump($db->queryOne("SELECT * FROM products WHERE id = :id", ['id' => 2]));

$category = new \app\model\Category();
var_dump($category);

$feedback = new \app\model\Feedback();
var_dump($feedback);

$products = new \app\model\Products();
var_dump($products);

$user_groups = new \app\model\User_groups();
var_dump($user_groups);

$user1 = new \app\model\Users(null, 1, 'user1', '12', 'Вася', 'Фамилия', 'mail@mail.ru', '322-223', 'Тест');

$temp = $user1->getOne(14);
var_dump($temp);

$temp = $user1->insert([
    'id' => null,
    'groups_id' => 1,
    'login' => 'user1',
    'password' => '12345',
    'name' => 'Гадя',
    'surname' => 'Петрович',
    'email' => 'gadya@mail.ru',
    'phone' => '322-223',
    'description' => 'Потерялася я!'
]);

/*Изменение значений в таблице*/
$temp = $user1->update([
    'login' => 'user2',
    'password' => '123456789',
    'name' => 'Миша',
    'surname' => 'Галустян'
], 26);