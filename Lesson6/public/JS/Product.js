class Product {
    constructor(source = './products/?ajax', settings = { // /JS/products.json
      "numberOfElements": 4,
      "photosId": [135, 136]
    }, bigCartItem, containerClass = '.featured_items') {
      this.settings = settings;
      this.source = source;
      this.container = containerClass;
      this.bigCartItem = bigCartItem;
      this.products = []; // РњР°СЃСЃРёРІ СЃ С‚РѕРІР°СЂР°РјРё
      this._init(this.source, this.settings.numberOfElements);
      this.getProducts();
  
  
    }
  
  
    _init(source, numberOfElements) {
      fetch(source)
        .then(result => result.json())
        .then(data => {
          for (let product of data.goods) {
            this.products.push(product);
            /* this._renderProduct(product); */
            if (this.settings.photosId.length === 0) {
              if (numberOfElements > 0) {
                this._renderProduct(product);
                numberOfElements--;
              }
            } else {
              if (this.settings.photosId.includes(product.id)) {
                this._renderProduct(product);
              }
            }
          }
          localStorage.setItem('products', JSON.stringify(this.products));
        })
    }
  
  
  
    _renderProduct(product) {
      let $newProductElem = $('<div\>', {
        class: 'featured_item',
        html: `<a class="product" href="/single_page/">
      <img src=${product.imageSrc} alt=${product.imageAlt} class="img_f_item">
      <p class="item_first_line">${product.productName}</p>
      <p class="item_second_line t-red">$${product.price}</p>
  
    </a>
  
    <div class="add_cart_flex">
      <a href="#Add_to_Cart" class="a_add_cart" data-product-price=${product.price} data-product-color=${product.color}
        data-product-size=${product.size} data-product-quantaty=${product.quantaty} data-product-name=${product.productName} data-id=${product.id}
        data-rating=${product.rating} data-product-image-src=${product.imageSrc} data-product-image-alt=${product.imageAlt} data-sex=${product.sex}>
        <img src="/img/white_cart.svg" alt="cart" class="img_add_cart">Add to Cart</a>
    </div>`
      });
      $($newProductElem).on('click', '.a_add_cart', () => {
        this.bigCartItem.addProductToCart(product);
      })
      $(this.container).append($newProductElem);
    }
  
    getProducts(product) {
      return product;
    }
  }