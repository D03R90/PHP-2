<? /**
 * @var \app\model\Products $product
 */
?>

<? foreach ($products as $product): ?><b><a href="/?c=product&a=card&id=<?=$product['idx']?>"><?=$product['name']?></a></b>
<p><?=$product['description']?></p>
<p>Стоимость: <?=$product['price']?></p>
<hr>
<? endforeach; ?>