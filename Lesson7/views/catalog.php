<? /**
 * @var \app\model\Products $product
 */

?>
    <h3><?=$auth->message?></h3>
    
    В <a href="/basket/">корзине </a> <?=$count?><br><br>
<? foreach ($products as $product): ?>

    <b><a href="/product/card/?id=<?= $product['idx'] ?>"><?= $product['name'] ?></a></b>
    <p><?= $product['description'] ?></p>
    <a href="/product/card/?id=<?= $product['idx'] ?>"><img src="img/<?= $product['image'] ?>"></a>
    <p>Стоимость: <?= $product['price'] ?></p>
    <button class="action" data-idx="<?= $product['idx'] ?>"> Купить (ajax)</button>
    <hr>
<? endforeach; ?>