<?php

?>
<h3><?=$auth->message?></h3>

<h1>Корзина</h1>
<? foreach ($products as $product): ?>

    <b><a href="/product/card/?id=<?=$product['id_prod'] ?>"><?= $product['name'] ?></a></b>
    <p><?= $product['description'] ?></p>
    <a href="/product/card/?id=<?=$product['id_prod'] ?>"><img src="/img/<?= $product['image'] ?>"></a>
    <p>Стоимость: <?= $product['price'] ?></p>
    <button class="delete" data-idx="<?=$product['id_basket'] ?>"> Удалить (ajax)</button>
    <hr>
<? endforeach; ?>
<br>
<p>Итого:<?= $product['price'] ?></p>

<br>
<a href="/">Каталог</a>