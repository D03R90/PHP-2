<?
/**
 * 1. Придумать класс, который описывает любую сущность из предметной области 
 * интернет-магазинов: продукт, ценник, корзина, заказ, пользователь и т.п.
 *
 * 2. Описать свойства класса из п.1 (состояние).
 *
 * 3. Описать поведение класса из п.1 (методы).
 *
 * 4. Придумать наследников класса из п.1. Чем они будут отличаться?
 */
//Класс с товарами
echo '<h2>Задание №1-4</h2>';
class Goods
{
    protected $id;
    protected $article;
    protected $category;
    protected $title;
    protected $description;
    protected $size;
    protected $weight;
    protected $price;
    protected $country;
    protected $count;
    protected $date;

    public function __construct($article = null, $category = null, $title = null, $description = null, $size = null, $weight = null, 
        $price = null, $country = null, $count = null, $date = null)
    {
        $this->article = $article;
        $this->category = $category;
        $this->title = $title;
        $this->description = $description;
        $this->size = $size;
        $this->weight = $weight;
        $this->price = $price;
        $this->country = $country;
        $this->count = $count;
        $this->date = $date;
    }

    public function view() {
        echo "
            <hr>
            <b>Дата:</b>$this->date
            <h2>Карточка товара</h2>
            <p><b>Артикул:</b> $this->article</p>
            <p><b>Категория:</b> $this->category</p>
            <p><b>Наименование:</b> $this->title</p>
            <p><b>Описание:</b> $this->description</p>
            <p><b>Габаритные размеры (В*Ш*Г):</b> $this->size</p>
            <p><b>Вес:</b> $this->weight кг</p>
            <p><b>Цена:</b> $this->price руб.</p>
            <p><b>Страна-производитель:</b> $this->country</p>
            <p><b>Количество на складе:</b> $this->count шт.</p>
        ";
    }
    // Товара со склада
    public function removeFromStock($number) {
        echo "<hr><h2>Склад</h2>";
        if (($this->count - $number) < 0) {
            echo "<b>Недостаточное количество товара на складе для списания: $number шт.!</b><br>";
        } else {
            $this->count -= $number;
            echo "<b>Списание товара $this->title в количестве $number шт. выполнено успешно!</b><br>";
        }
        echo "<b>Остаток на складе:</b> $this->count шт.<br>";
    }
}
//Дочерний класс уценки
class Discount extends Goods {
    protected $state;
    protected $complete;
    protected $package;
    protected $reason;

    public function __construct($article = null, $category = null, $title = null, $description = null, $size = null, $weight = null, $price = null, 
        $country = null, $count = null, $date = null, $state = null, $complete = null, $package = null, $reason = null) {

        parent::__construct($article, $category, $title, $description, $size, $weight, $price, $country, $count, $date);
        $this->state = $state;
        $this->complete = $complete;
        $this->package = $package;
        $this->reason = $reason;
    }

    public function view() {
        parent::view();
        echo "
            <b>Состояние:</b> $this->state<br>
            <b>Комплектность:</b> $this->complete<br>
            <b>Состояние упаковки:</b> $this->package<br>
            <b>Причина уценки:</b> $this->reason<br>
        ";
    }
}
/*Стандартный товар*/
$good1 = new Goods(30031125, "Ноутбук", "HP 15-bw065ur",
    "HP 15-bw065ur 2BT82EA, 15.6\" (1920x1080), RAM 6 ГБ, Radeon 530 2ГБ, Windows 10 Домашняя 64",
    "24*380*254 мм", "2.1", "32 990", "КНР", "11", date(" Y-m-d"));
$good1->view();
$good1->removeFromStock(10);
$good1->removeFromStock(2);
/*Уцененный товар*/
$good2 = new Discount(30032211, "Ноутбуки", "ASUS UX331UA-EG013T",
    "ASUS UX331UA-EG013T, 13.3\" (1920x1080), RAM 8 ГБ, Intel UHD Graphics 620, Windows 10 Домашняя 64",
    "24*280*214 мм", "1.3", "61 990", "КНР", "3", date(" Y-m-d"),
    "витринный образец", "без зарядного устройства", "отличное", "некомплект");
$good2->view();
$good2->removeFromStock(3);
$good2->removeFromStock(1);


echo '<br><br><br><h2>Задание №5-6</h2>';

class A
{
    public function foo()
    {
        static $x = 0;
        echo ++$x . '<br>';
    }
}
$a1 = new A();
$a2 = new A();
$a1->foo();
$a2->foo();
$a1->foo();
$a2->foo();
echo '<br>';

class C
{
    public function foo()
    {
        static $x = 0;
        echo ++$x . '<br>';
    }
}
class B extends C
{
}
$c1 = new C();
$b1 = new B();
$c1->foo();
$b1->foo();
$c1->foo();
$b1->foo();

echo '<p>
Динамические методы в PHP «не размножаются». Даже если у нас будет сто объектов этого класса,<br>
метод будет существовать лишь в одном экземпляре, просто при каждом вызове в него будет пробрасываться разный $this.<br>
Наследование класса (и метода) приводит к тому, что всё-таки создается новый метод.<br>
Вывод: динамические методы в PHP существуют в контексте классов, а не объектов.<br>
И только лишь в рантайме происходит подстановка "$this = текущий_объект".<br> 
<a href="https://intellect.ml/staticheskie-peremennye-staticheskie-svojstva-i-metody-i-pozdnee-staticheskoe-svyazyvanie-v-php-i-osobennosti-oop-7732" target="_blank">
Источник:
</a>
</p>';