<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Title -->
    <title>E-Commerce Online Shop</title>
    <!-- Style Sheet -->
    <link rel="stylesheet" type="text/css" href="../views/css/style.css" />
</head>
<body>

<header>
    <div class="container">
        <div class="brand">
            <div class="logo">
                <a href="index">
                    <img src="../views/img/icons/online_shopping.png">
                    <div class="logo-text">
                        <p class="big-logo" >Grain Mill</p>
                        <p class="small-logo" >market&delivery</p>
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
                                <td><img src="../views/img/product/img1.jpg"></td>
                                <td>product name</td>
                            </tr>
                            <tr>
                                <td><img src="../views/img/product/img2.jpg"></td>
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
                    <li><a href="home">Home</a></li>
                    <li><a href="shop">Shop</a></li>
                    <li><a href="about">About</a></li>
                    <li><a href="contact">Contact</a></li>
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
        <div class="contact">
            <h2 class="heading">Contact Form</h2>
            <form class="checkout-form" action="https://formcarry.com/s/Pq3xf4Lbabh" method="POST">
                <div class="form-group">
                    <label for="fname">First Name</label>
                    <input type="text" id="fname" name="fname">
                </div>
                <div class="form-group">
                    <label for="lname">Last Name</label>
                    <input type="text" id="lname" name="lname">
                </div>
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email">
                </div>
                <div class="form-group">
                    <label for="message">Your Message</label>
                    <textarea name="message" id="message" rows="10"></textarea>
                </div>
                <div class="form-group">
                    <label for="contact"></label>
                    <input type="submit" id="contact" name="contact" value="Send">
                </div>
            </form>
        </div>
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
                        <li><a href="about">About</a></li>
                        <li><a href="contact">Contact</a></li>
                        <li><a href="refund">Refund Policy</a></li>
                        <li><a href="terms">Terms & Conditions</a></li>
                    </ul>
                </div>
            </div>
            <div class="widget">
                <div class="widget-heading">
                    <h3>Information</h3>
                </div>
                <div class="widget-content">
                    <ul>
                        <li><a href="account">My Account</a></li>
                        <li><a href="orders.jsp">My Orders</a></li>
                        <li><a href="cart">Cart</a></li>
                        <li><a href="checkout">Checkout</a></li>
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
                            <li><a href="#"><img src="../views/img/icons/facebook.png" alt=""></a></li>
                            <li><a href="#"><img src="../views/img/icons/twitter.png" alt=""></a></li>
                            <li><a href="#"><img src="../views/img/icons/instagram.png" alt=""></a></li>
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
                                <img src="../views/img/icons/paper_plane.png" alt="">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div> <!-- Footer Widget -->
        <div class="footer-bar">
            <div class="copyright-text">
                <p>Copyright 2023 - All Rights Reserved</p>
            </div>
            <div class="payment-mode">
                <img src="../views/img/icons/paper_money.png" alt="">
                <img src="../views/img/icons/visa.png" alt="">
                <img src="../views/img/icons/mastercard.png" alt="">
            </div>
        </div> <!-- Footer Bar -->
    </div>
</footer> <!-- Footer Area -->

</body>

</html>