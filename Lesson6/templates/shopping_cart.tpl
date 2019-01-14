
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>The Brand - Shopping Cart</title>
  <link rel="stylesheet" href="/CSS/normalize.css">
  <link rel="stylesheet" href="/CSS/style.css">
  <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext"
    rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
    crossorigin="anonymous">
</head>

<body class="site">
  <header class="header-main">
    <div class="container flex-sb">
      <div class="logo header-left">

        <a class="logo_a flex-ai-c" href="/index/">
          <img src="/img/logo.png" alt="logo" class="logo_img">
          <span class="logo_bran">BRAN</span>
          <span class="logo_d">D</span>
        </a>
        <form action="#" class="search_f">
          <div class="browse-container">
            <button class="but_br">Browse
              <i class="fas fa-caret-down"></i>
            </button>
            <ul class="browse-menu">
              <li class="browse-menu-first-level"><a href="/products/" class="browse-menu__link">Women</a>
                <ul class="browse-sub-menu">
                  <li class="browse-menu-second-level"><a href="/products/" class="browse-menu__link">Dresses</a></li>
                  <li class="browse-menu-second-level"><a href="/products/" class="browse-menu__link">Tops</a></li>
                  <li class="browse-menu-second-level"><a href="/products/" class="browse-menu__link">Sweaters/Knits</a></li>
                  <li class="browse-menu-second-level"><a href="/products/" class="browse-menu__link">Jackets/Coats</a></li>
                  <li class="browse-menu-second-level"><a href="/products/" class="browse-menu__link">Blazers</a></li>
                  <li class="browse-menu-second-level"><a href="/products/" class="browse-menu__link">Denim</a></li>
                  <li class="browse-menu-second-level"><a href="/products/" class="browse-menu__link">Leggings/Pants</a></li>
                  <li class="browse-menu-second-level"><a href="/products/" class="browse-menu__link">Skirts/Shorts</a></li>
                  <li class="browse-menu-second-level"><a href="/products/" class="browse-menu__link">Accessories</a></li>
                </ul>
              </li>
              <li class="browse-menu-first-level"><a href="/products/" class="browse-menu__link">Men</a>
                <ul class="browse-sub-menu">
                  <li class="browse-menu-second-level"><a href="/products/" class="browse-menu__link">Tees/Tank
                      tops</a></li>
                  <li class="browse-menu-second-level"><a href="/products/" class="browse-menu__link">Shirts/Polos</a></li>
                  <li class="browse-menu-second-level"><a href="/products/" class="browse-menu__link">Sweaters</a></li>
                  <li class="browse-menu-second-level"><a href="/products/" class="browse-menu__link">Sweatshirts/Hoodies</a></li>
                  <li class="browse-menu-second-level"><a href="/products/" class="browse-menu__link">Blazers</a></li>
                </ul>
              </li>
            </ul>
          </div>


          <input type="search" name="search_line" id="search_line" placeholder="Search for Item...">
          <button class="search_sub">
            <i class="fas fa-search"></i>
          </button>
        </form>
      </div>
      <div class="header-right flex-ai-c">
        <div class="cart-container">
          <a class="a_cart img-cart-animation" href="/shopping_cart/">
            <!--            <img src="img/cart.svg" alt="cart" class="a_cart_img"> -->
            <div class="a_cart_red_circle">
              <span class="red_circle_span">2</span>
            </div>
          </a>
          <div class="cart-drop-down">

            <div class="summary-container">
              <span class="summary-container__span">TOTAL</span>
              <span class="summary-container__span">$500.00</span>
            </div>

            <a href="/checkout/" class="cart-dd-btn">Checkout</a>
            <a href="/shopping_cart/" class="cart-dd-btn">Go to cart</a>

          </div>
        </div>

        <a class="my-acc" href="#">My Account
          <i class="fas fa-caret-down"></i>
        </a>
      </div>
    </div>
  </header>

  <div class="site-content">
    <nav class="navigation">

      <ul class="menu container">
        <li class="menu__list">
          <a class="menu__link" href="/index/">Home</a>
        </li>
        <li class="menu__list">
          <a class="menu__link" href="/products/">Man</a>
          <div class="mega-menu">
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Blazers</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Denim</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Leggings/Pants</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Skirts/Shorts</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Accessories </a>
                </li>

              </ul>
            </div>
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Blazers</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Denim</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Leggings/Pants</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Skirts/Shorts</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Accessories </a>
                </li>

              </ul>
            </div>
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>


              </ul>
              <a class="mega-menu__img" href="#">
                <img src="/img/mega-menu__image.jpg" alt="adertising_image">
                <div class="mega-menu-img__string">
                  <h4>Super</h4>
                  <h4>sale!</h4>
                </div>
              </a>
            </div>

          </div>
        </li>
        <li class="menu__list">
          <a class="menu__link" href="/products/">Women</a>
          <div class="mega-menu">
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Blazers</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Denim</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Leggings/Pants</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Skirts/Shorts</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Accessories </a>
                </li>

              </ul>
            </div>
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Blazers</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Denim</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Leggings/Pants</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Skirts/Shorts</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Accessories </a>
                </li>

              </ul>
            </div>
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>


              </ul>
              <a class="mega-menu__img" href="#">
                <img src="/img/mega-menu__image.jpg" alt="adertising_image">
                <div class="mega-menu-img__string">
                  <h4>Super</h4>
                  <h4>sale!</h4>
                </div>
              </a>
            </div>


          </div>
        </li>
        <li class="menu__list">
          <a class="menu__link" href="/products/">Kids</a>
          <div class="mega-menu">
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Blazers</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Denim</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Leggings/Pants</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Skirts/Shorts</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Accessories </a>
                </li>

              </ul>
            </div>
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Blazers</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Denim</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Leggings/Pants</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Skirts/Shorts</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Accessories </a>
                </li>

              </ul>
            </div>
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>


              </ul>
              <a class="mega-menu__img" href="#">
                <img src="/img/mega-menu__image.jpg" alt="adertising_image">
                <div class="mega-menu-img__string">
                  <h4>Super</h4>
                  <h4>sale!</h4>
                </div>
              </a>
            </div>

          </div>
        </li>
        <li class="menu__list">
          <a class="menu__link" href="/products/">Accoseriese</a>
          <div class="mega-menu">
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Blazers</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Denim</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Leggings/Pants</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Skirts/Shorts</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Accessories </a>
                </li>

              </ul>
            </div>
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Blazers</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Denim</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Leggings/Pants</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Skirts/Shorts</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Accessories </a>
                </li>

              </ul>
            </div>
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>


              </ul>
              <a class="mega-menu__img" href="#">
                <img src="/img/mega-menu__image.jpg" alt="adertising_image">
                <div class="mega-menu-img__string">
                  <h4>Super</h4>
                  <h4>sale!</h4>
                </div>
              </a>
            </div>

          </div>
        </li>
        <li class="menu__list">
          <a class="menu__link" href="/products/">Featured</a>
          <div class="mega-menu">
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Blazers</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Denim</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Leggings/Pants</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Skirts/Shorts</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Accessories </a>
                </li>

              </ul>
            </div>
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Blazers</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Denim</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Leggings/Pants</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Skirts/Shorts</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Accessories </a>
                </li>

              </ul>
            </div>
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>


              </ul>
              <a class="mega-menu__img" href="#">
                <img src="/img/mega-menu__image.jpg" alt="adertising_image">
                <div class="mega-menu-img__string">
                  <h4>Super</h4>
                  <h4>sale!</h4>
                </div>
              </a>
            </div>

          </div>
        </li>
        <li class="menu__list">
          <a class="menu__link" href="/products/">Hot Deals</a>
          <div class="mega-menu">
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Blazers</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Denim</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Leggings/Pants</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Skirts/Shorts</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Accessories </a>
                </li>

              </ul>
            </div>
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Blazers</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Denim</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Leggings/Pants</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Skirts/Shorts</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Accessories </a>
                </li>

              </ul>
            </div>
            <div class="mega-flex">
              <h3 class="mega-menu__heading">Women</h3>
              <ul>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Dresses</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Tops</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Sweaters/Knits</a>
                </li>
                <li class="mega-menu__list">
                  <a class="mega-menu__link" href="/products/">Jackets/Coats</a>
                </li>


              </ul>
              <a class="mega-menu__img" href="#">
                <img src="/img/mega-menu__image.jpg" alt="adertising_image">
                <div class="mega-menu-img__string">
                  <h4>Super</h4>
                  <h4>sale!</h4>
                </div>
              </a>
            </div>

          </div>
        </li>
      </ul>





    </nav>

    <nav class="div_breadcrumbs">
      <div class="container breadcrumbs_flex flex-sb">
        <h2>Shopping Cart</h2>
        <ul class="ul_breadcrumbs">
          <li>
            <a href="/index/">Home</a>
          </li>
          <!--   <li>
          <a href="/products/"></a>
        </li> -->
          <li>
            Shopping Cart
          </li>
        </ul>
      </div>
    </nav>

    <div class="item_group_container container">
      <table class="item_group">
        <thead class="table__heading">
          <tr class="flex_item_table">
            <th class="flex_cell item_table_heading">Product Details</th>
            <th class="flex_cell item_table_heading">unite Price</th>
            <th class="flex_cell item_table_heading">Quantity</th>
            <th class="flex_cell item_table_heading">shipping</th>
            <th class="flex_cell item_table_heading">Subtotal</th>
            <th class="flex_cell item_table_heading">Action</th>

          </tr>
        </thead>
        <tbody>
        </tbody>
      </table>

    </div>
    <div class="button_container container">
      <button type="reset">cLEAR SHOPPING CART</button>
      <button>cONTINUE sHOPPING</button>

    </div>
    <div class="container">
      <form action="#" class="flex_form">
        <fieldset>
          <h3>Shipping Adress</h3>
          <label for="input_shipping_country"></label><select name="input_shipping_country" id="input_shipping_country">
            <option value="Contry" selected="selected">Country</option>
            <option value="Bangladesh">Bangladesh</option>
            <option value="Belarus">Belarus</option>
            <option value="Belgium">Belgium</option>
            <option value="Russia">Russia</option>
            <option value="United Arab Emirates">United Arab Emirates</option>
            <option value="United Kingdom">United Kingdom</option>
            <option value="United States">United States</option>
          </select>
          <input type="text" name="input_shipping_state" id="input_shipping_state" placeholder="State">
          <input type="number" name="input_shipping_postcode" id="input_shipping_postcode" placeholder="Postcode / Zip">
          <button>get a quote</button>
        </fieldset>
        <fieldset>
          <h3>coupon discount</h3>
          <label for="input_coupon_state">Enter your coupon code if you have one</label>
          <input type="text" name="input_coupon_state" id="input_coupon_state" placeholder="State">
          <button>Apply coupon</button>
        </fieldset>
        <fieldset>
          <div class="subtotal_text form_text_container">
            <p>Sub total
              <span id="sub_total">$900</span>
            </p>
            <h3>GRAND TOTAL
              <span id="grand_total">$900</span>
            </h3>
          </div>
          <a href="/checkout/">proceed to checkout</a>
        </fieldset>
      </form>
    </div>

    <div class="review_subscribe">
      <div class="flex_rev_sub container">
        <div class="review_div">
          <div>
            <img src="/img/Photo_review.png" alt="#" class="review_img">
          </div>

          <div class="rev_text">
            <p>“Vestibulum quis porttitor dui! Quisque viverra nunc mi, a pulvinar purus condimentum a. Aliquam
              condimentum mattis
              neque sed pretium”</p>
            <p>Bin Burhan
            </p>
            <p>Dhaka, Bd</p>
            <div class="btn_rev_container">
              <button class="btn_rev1 a_rev"></button>
              <button class="btn_rev2 a_rev"></button>
              <button class="btn_rev3 a_rev"></button>
            </div>
          </div>

        </div>

        <div class="subscribe_div">
          <div class="subscribe_container">
            <h3>Subscribe</h3>
            <p>FOR OUR NEWLETTER AND PROMOTION</p>
            <form action="#" class="subscribe_form">
              <input type="email" name="input_sub_email" id="input_sub_email" placeholder="Enter Your Email">
              <input class="btn_subscribe_sub" type="submit" value="Subscribe">
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <footer class="main-footer">
    <div class="footer_menu container">
      <div class="footer_column1">
        <a class="logo_a flex-ai-c" href="/index/">
          <img src="/img/logo.png" alt="logo" class="logo_img">
          <span class="logo_bran">BRAN</span>
          <span class="logo_d">D</span>
        </a>
        <p>Objectively transition extensive data rather than cross functional solutions. Monotonectally syndicate
          multidisciplinary
          materials before go forward benefits. Intrinsicly syndicate an expanded array of processes and cross-unit
          partnerships.</p>

        <p>Efficiently plagiarize 24/365 action items and focused infomediaries. Distinctively seize superior
          initiatives for
          wireless technologies. Dynamically optimize.</p>

      </div>
      <div class="footer_column2">
        <h3 class="footer_h3">COMPANY</h3>
        <ul class="footer_menu_ul">
          <li>
            <a class="f_menu_link" href="/index/">Home</a>
          </li>
          <li>
            <a class="f_menu_link" href="#">Shop</a>
          </li>
          <li>
            <a class="f_menu_link" href="#">About</a>
          </li>
          <li>
            <a class="f_menu_link" href="#">How It Works</a>
          </li>
          <li>
            <a class="f_menu_link" href="#">Contact</a>
          </li>

        </ul>

      </div>
      <div class="footer_column3 ">
        <h3 class="footer_h3">INFORMATION</h3>
        <ul class="footer_menu_ul">
          <li>
            <a class="f_menu_link" href="">Tearms & Condition</a>
          </li>
          <li>
            <a class="f_menu_link" href="">Privacy Policy</a>
          </li>
          <li>
            <a class="f_menu_link" href="">How to Buy</a>
          </li>
          <li>
            <a class="f_menu_link" href="">How to Sell</a>
          </li>
          <li>
            <a class="f_menu_link" href="">Promotion</a>
          </li>

        </ul>
      </div>
      <div class="footer_column4 ">
        <h3 class="footer_h3">SHOP CATEGORY</h3>
        <ul class="footer_menu_ul">
          <li>
            <a class="f_menu_link" href="/products/">Men</a>
          </li>
          <li>
            <a class="f_menu_link" href="/products/">Women</a>
          </li>
          <li>
            <a class="f_menu_link" href="/products/">Child</a>
          </li>
          <li>
            <a class="f_menu_link" href="/products/">Apparel</a>
          </li>
          <li>
            <a class="f_menu_link" href="#">Brows All</a>
          </li>
        </ul>
      </div>
    </div>

    <div class="footer_bottom">
      <div class="container flex_footer_bottom">
        <div class="copyright">
          <p>&copy; 2018 Brand All Rights Reserved.</p>
        </div>
        <div class="socialbtn">
          <a href="#">
            <i class="fab fa-facebook-f"></i>
          </a>
          <a href="#">
            <i class="fab fa-twitter"></i>
          </a>
          <a href="#">
            <i class="fab fa-linkedin-in"></i>
          </a>

          <a href="#">
            <i class="fab fa-pinterest-p"></i>
          </a>
          <a href="#">
            <i class="fab fa-google"></i>
          </a>

        </div>
      </div>

    </div>
  </footer>

  <script src='/JS/jquery-3.3.1.min.js'></script>
  <script src='/JS/BigCart.js'> </script>
  <script src='/JS/jquery.mask.min.js'></script>
  <script>
    "use strict";
    $(document).ready(() => {

      let cart = new BigCart('/JS/cart.json');
    });
  </script>

</body>
</html>