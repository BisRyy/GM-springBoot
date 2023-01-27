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
    <!-- Javascript -->
    <script type="text/javascript" src="../views/js/jquery.min.js"></script>
</head>
<body>

<header>
    <div class="container">
        <div class="brand">
            <div class="logo">
                <a href="index.html">
                    <img src="../views/img/icons/online_shopping.png">
                    <div class="logo-text">
                        <p class="big-logo">Grain Mill</p>
                        <p class="small-logo">market&delivery</p>
                    </div>
                </a>
            </div> <!-- logo -->
            <div class="shop-icon">
                <div class="dropdown">
                    <img src="../views/img/icons/account.png">
                    <div class="dropdown-menu">
                        <ul>
                            <li><a href="account.html">My Account</a></li>
                            <li><a href="orders.html">My Orders</a></li>
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
                <li><a href="index">Home</a></li>
                <li> / </li>
                <li>Account</li>
            </ul>
        </div> <!-- End of Breadcrumb-->

        <div class="account-page">
            <div class="profile">
                <div class="profile-img">
                    <img src="../views/img/product/img5.jpg">
                    <h2>John Doe</h2>
                    <p>john_doe@mail.com</p>
                </div>
                <ul>
                    <li><a href="account" class="active">Account <span>></span></a></li>
                    <li><a href="order">My Orders <span>></span></a></li>
                    <li><a href="change-password">Change Password <span>></span></a></li>
                    <li><a href="logout">Logout <span>></span></a></li>
                </ul>
            </div>
            <div class="account-detail">
                <h2>Account</h2>
                <div class="billing-detail">
                    <form class="checkout-form" action="updateuser" method="post">
                        <div class="form-inline">
                            <div class="form-group">
                                <label>First Name</label>
                                <input type="text" id="fname" name="fname" value="${username}">
                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <input type="text" id="lname" name="lname" value="Doe">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Company Name (Optional)</label>
                            <input type="text" id="cname" name="cname">
                        </div>
                        <div class="form-inline">
                            <div class="form-group">
                                <label for="country">Country</label>
                                <select id="country" name="country">
                                    <option selected>---Select a Country---</option>
                                    <option value="pakistan">Pakistan</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="city">City</label>
                                <select id="city" name="city">
                                    <option selected>---Select a City---</option>
                                    <option value="karachi">Karachi</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="address">Address</label>
                            <textarea style="resize:none" id="address" name="address" rows="3">${address} </textarea>
                        </div>
                        <div class="form-inline">
                            <div class="form-group">
                                <label for="useremail">Email</label>
                                <input type="email" id="useremail" name="email" value="${email}">
                            </div>
                            <div class="form-group">
                                <label>Mobile</label>
                                <input type="text" id="mobile" name="mobile" minlength="11" maxlength="11" value="555-XXXXXXX">
                            </div>
                        </div>
                        <div class="form-group">
                            <label></label>
                            <input type="submit" id="update" name="update" value="Update">
                        </div>
                    </form>
                </div>
            </div>
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
                        <li><a href="orders">My Orders</a></li>
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