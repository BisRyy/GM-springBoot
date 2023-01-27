<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Meta Tags -->
    <meta charset="UTF-8">
    <meta name="author" content="Kamran Mubarik">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Title -->
    <title>E-Commerce Online Shop</title>
    <!-- Style Sheet -->
    <link rel="stylesheet" type="text/css" href="../views/css/style.css" />
    <!-- Javascript -->
    <script type="text/javascript" src="../views/js/jquery.min.js"></script>
    <!-- FancyBox -->
    <link rel="stylesheet" href="../views/fancybox/source/jquery.fancybox.css" type="text/css" media="screen" />
    <script type="text/javascript" src="../views/fancybox/source/jquery.fancybox.pack.js"></script>

    <!-- Optionally add helpers - button, thumbnail and/or media -->
    <link rel="stylesheet" href="../views/fancybox/source/helpers/jquery.fancybox-buttons.css" type="text/css" media="screen" />
    <script type="text/javascript" src="../views/fancybox/source/helpers/jquery.fancybox-buttons.js"></script>
    <script type="text/javascript" src="../views/fancybox/source/helpers/jquery.fancybox-media.js"></script>

    <link rel="stylesheet" href="../views/fancybox/source/helpers/jquery.fancybox-thumbs.css" type="text/css" media="screen" />
    <script type="text/javascript" src="../views/fancybox/source/helpers/jquery.fancybox-thumbs.js"></script>
    <script>
        $(document).ready(function(){
            $('.fancybox').fancybox({
                openEffect  : 'none',
                closeEffect : 'none',

                prevEffect : 'none',
                nextEffect : 'none',

                closeBtn  : false,

                helpers : {
                    title : {
                        type : 'inside'
                    },
                    buttons	: {}
                },

                afterLoad : function() {
                    this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
                }
            });
        });

    </script>
</head>
<body>

<header>
    <div class="container">
        <div class="brand">
            <div class="logo">
                <a href="index.html">
                    <img src="../views/img/icons/online_shopping.png">
                    <div class="logo-text">
                        <p class="big-logo">Grain_Mill</p>
                        <p class="small-logo">market&delivery</p>
                    </div>
                </a>
            </div> <!-- logo -->
            <div class="shop-icon">
                <div class="dropdown">
                    <img src="../views/img/icons/account.png">
                    <div class="dropdown-menu">
                        <ul>
                            <li><a href="account">My Account</a></li>
                            <li><a href="orders.jsp">My Orders</a></li>
                        </ul>
                    </div>
                </div>
                <div class="dropdown">
                    <img src="../views/img/icons/heart.png">
                    <div class="dropdown-menu wishlist-item">
                        <table border="1">
                            <thead>
                            <tr>
                                <th>Image</th>
                                <th>Product Name</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><img src="../views/img/product/img1.jpg" alt=""></td>
                                <td>product name</td>
                            </tr>
                            <tr>
                                <td><img src="../views/img/product/img2.jpg" alt=""></td>
                                <td>product name</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="dropdown">
                    <img src="../views/img/icons/shopping_cart.png">
                    <div class="dropdown-menu cart-item">
                        <table border="1">
                            <thead>
                            <tr>
                                <th>Image</th>
                                <th>Product Name</th>
                                <th class="center">Price</th>
                                <th class="center">Qty.</th>
                                <th class="center">Amount</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><img src="../views/img/product/img1.jpg"></td>
                                <td>product name</td>
                                <td class="center">1200</td>
                                <td class="center">2</td>
                                <td class="center">2400</td>
                            </tr>
                            <tr>
                                <td><img src="../views/img/product/img2.jpg"></td>
                                <td>product name</td>
                                <td class="center">1500</td>
                                <td class="center">2</td>
                                <td class="center">3000</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div> <!-- shop icons -->
        </div> <!-- brand -->

        <div class="menu-bar">
            <div class="menu">
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="shop.html">Shop</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </div>
            <div class="search-bar">
                <form>
                    <div class="form-group">
                        <input type="text" class="form-control" name="search" placeholder="Search">
                        <img src="../views/img/icons/search.png">
                    </div>
                </form>
            </div>
        </div> <!-- menu -->
    </div> <!-- container -->
</header> <!-- header -->

<div class="container">
    <main>
        <div class="breadcrumb">
            <ul>
                <li><a href="index.html">Home</a></li>
                <li> / </li>
                <li><a href="">Shop</a></li>
                <li> / </li>
                <li><a href="">Product</a></li>
            </ul>
        </div> <!-- End of Breadcrumb-->

        <div class="single-product">
            <div class="images-section">
                <div class="larg-img">
                    <img src="../views/img/product/img1.jpg">
                </div>
                <div class="small-img">
                    <a class="fancybox" rel="group" href="../views/img/product/img2.jpg">
                        <img src="../views/img/product/img2.jpg">
                    </a>
                    <a class="fancybox" rel="group" href="../views/img/product/img3.jpg">
                        <img src="../views/img/product/img3.jpg">
                    </a>
                    <a class="fancybox" rel="group" href="../views/img/product/img4.jpg">
                        <img src="../views/img/product/img4.jpg">
                    </a>
                    <a class="fancybox" rel="group" href="../views/img/product/img5.jpg">
                        <img src="../views/img/product/img5.jpg">
                    </a>
                </div>
            </div> <!-- End of Images Section-->

            <div class="product-detail">
                <div class="product-name">
                    <h2>Product Name</h2>
                </div>
                <div class="product-price">
                    <h3>Rs.4,500/-</h3>
                </div>
                <hr>
                <div class="product-description">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in leo leo. Donec aliquet mauris ac consequat ornare. Pellentesque eget leo tempor, venenatis mauris sed, viverra ante. Donec tincidunt mauris vel tincidunt ultricies. Sed sed libero hendrerit elit gravida vulputate.</p>
                </div>
                <hr>
                <div class="product-cart">
                    <form id="cart-form">
                        <div class="form-group">
                            <input type="number" class="cart-number" name="cartNumber" value="1" min="1" max="10">
                            <input type="submit" name="addToCart" value="Add To Cart">
                        </div>
                    </form>
                    <form id="wishlist-form">
                        <div class="form-group">
                            <input type="checkbox" class="wishlist" name="wishlist"> Add To Wishlist
                        </div>
                    </form>
                </div>
                <hr>
                <div class="product-meta">
                    <p><b>Category: </b> Product</p>
                    <p><b>Share This Product: </b> Facebook, Twitter</p>
                </div>
            </div> <!-- End of Product Detail-->
        </div>
        <hr>
        <div class="product-long-description">
            <h3>Product Description</h3>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in leo leo. Donec aliquet mauris ac consequat ornare. Pellentesque eget leo tempor, venenatis mauris sed, viverra ante. Donec tincidunt mauris vel tincidunt ultricies. Sed sed libero hendrerit elit gravida vulputate.
            </p>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in leo leo. Donec aliquet mauris ac consequat ornare. Pellentesque eget leo tempor, venenatis mauris sed, viverra ante. Donec tincidunt mauris vel tincidunt ultricies. Sed sed libero hendrerit elit gravida vulputate.
            </p>
        </div>
        <hr>
        <div class="new-product-section">
            <div class="product-section-heading">
                <h2>Recommend Products <img src="../views/img/icons/good_quality.png"></h2>
                <h3>OUR BEST PRODUCTS RECOMMENDED FOR YOU</h3>
            </div>
            <div class="product-content">
                <div class="product">
                    <a href="product.html">
                        <img src="../views/img/product/img1.jpg">
                    </a>
                    <div class="product-detail">
                        <h3>Men's / Watches</h3>
                        <h2>Gray Color Men's Watch</h2>
                        <a href="#">Add to Cart</a>
                        <p>Rs.4500/-</p>
                    </div>
                </div>
                <div class="product">
                    <a href="product.html">
                        <img src="../views/img/product/img2.jpg">
                    </a>
                    <div class="product-detail">
                        <h3>Men's / Pants</h3>
                        <h2>Levi's Jeans Pant</h2>
                        <a href="#">Add to Cart</a>
                        <p>Rs.2000/-</p>
                    </div>
                </div>
                <div class="product">
                    <a href="product.html">
                        <img src="../views/img/product/img3.jpg">
                    </a>
                    <div class="product-detail">
                        <h3>Men's / Watches</h3>
                        <h2>Black Men's Watch</h2>
                        <a href="#">Add to Cart</a>
                        <p>Rs.4000/-</p>
                    </div>
                </div>
                <div class="product">
                    <a href="product.html">
                        <img src="../views/img/product/img4.jpg">
                    </a>
                    <div class="product-detail">
                        <h3>Men's / Shoes</h3>
                        <h2>Nick Black Sneakers</h2>
                        <a href="#">Add to Cart</a>
                        <p>Rs.3200/-</p>
                    </div>
                </div>
            </div>
        </div> <!-- Recommend Product Section -->
    </main> <!-- Main Area -->
</div>

<footer>
    <div class="container">
        <div class="footer-widget">
            <div class="widget">
                <div class="widget-heading">
                    <h3>Important Link</h3>
                </div>
                <div class="widget-content">
                    <ul>
                        <li><a href="about.html">About</a></li>
                        <li><a href="contact.html">Contact</a></li>
                        <li><a href="refund.html">Refund Policy</a></li>
                        <li><a href="terms.html">Terms & Conditions</a></li>
                    </ul>
                </div>
            </div>
            <div class="widget">
                <div class="widget-heading">
                    <h3>Information</h3>
                </div>
                <div class="widget-content">
                    <ul>
                        <li><a href="account.html">My Account</a></li>
                        <li><a href="orders.html">My Orders</a></li>
                        <li><a href="cart.html">Cart</a></li>
                        <li><a href="checkout.html">Checkout</a></li>
                    </ul>
                </div>
            </div>
            <div class="widget">
                <div class="widget-heading">
                    <h3>Follow us</h3>
                </div>
                <div class="widget-content">
                    <div class="follow">
                        <ul>
                            <li><a href="#"><img src="../views/img/icons/facebook.png"></a></li>
                            <li><a href="#"><img src="../views/img/icons/twitter.png"></a></li>
                            <li><a href="#"><img src="../views/img/icons/instagram.png"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="widget-heading">
                    <h3>Subscribe for Newsletter</h3>
                </div>
                <div class="widget-content">
                    <div class="subscribe">
                        <form>
                            <div class="form-group">
                                <input type="text" class="form-control" name="subscribe" placeholder="Email">
                                <img src="../views/img/icons/paper_plane.png">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div> <!-- Footer Widget -->
        <div class="footer-bar">
            <div class="copyright-text">
                <p>Copyright 2021 - All Rights Reserved</p>
            </div>
            <div class="payment-mode">
                <img src="../views/img/icons/paper_money.png">
                <img src="../views/img/icons/visa.png">
                <img src="../views/img/icons/mastercard.png">
            </div>
        </div> <!-- Footer Bar -->
    </div>
</footer> <!-- Footer Area -->

</body>

</html>