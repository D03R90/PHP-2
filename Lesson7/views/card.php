<? /**
 * @var \app\model\Products $product
 */
?>

<? if ($auth) :?>
Добро пожаловать: <?=$username?>
<? else: ?>
<form>
<h3><?=$auth->message?></h3>
</form>
<? endif;?>

В <a href="/basket/">корзине </a> <?=$count?>

<h1><?=$product->name?></h1>
<p><?=$product->description?></p>
<p><img src=/img/<?=$product->image?>></p>
<p>Стоимость: <?=$product->price?></p>

<button class="action" data-idx="<?=$product->idx?>"> Купить (ajax) </button>

<br>
<br>
<a href="/">Каталог</a>