<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<%--    --%>
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"--%>
<%--          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">--%>
<%--    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"--%>
<%--          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">--%>
<%--    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>--%>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>--%>
<%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>--%>
<%--    --%>
    <title>GM - Home</title>

    <link rel="stylesheet" type="text/css" href="../views/css/style.css" />

    <script type="text/javascript" src="../views/js/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.slider').bxSlider({
                auto: true,
                autoControls: true,
                stopAutoOnClick: true,
                pager: true
            });
        });
    </script>

</head>
<body>

<header>
    <div class="container">
        <div class="brand">
            <div class="logo">
                <a href="/home">
                    <img src="../views/img/icons/online_shopping.png">
                    <div class="logo-text">
                        <p class="big-logo">Grain Mill</p>
                        <p class="small-logo">market </p>
                    </div>
                </a>
            </div> <!-- logo -->
            <div class="shop-icon">
                <div class="dropdown">
                    <img src="../views/img/icons/account.png">
                    <div class="dropdown-menu">
                        <ul>
                            <li><a href="/account">My Account</a></li>
                            <li><a href="/orders">My Orders</a></li>
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
                                <td><img src="../views/img/product/img1.jpg" alt=""></td>
                                <td>product name</td>
                                <td class="center">1200</td>
                                <td class="center">2</td>
                                <td class="center">2400</td>
                            </tr>
                            <tr>
                                <td><img src="../views/img/product/img2.jpg" alt=""></td>
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
                    <li><a href="#">Home</a></li>
                    <li><a href="/shop">Shop</a></li>
                    <li><a href="/about">About</a></li>
                    <li><a href="/contact">Contact</a></li>
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
        <div class="slider">
            <div class="slide-1">
                <img src="../views/img/slider/slide-1.jpg">
                <div class="slider-text">
                    <h3>Sale 40% off</h3>
                    <h2>Men's Watches</h2>
                    <a href="#">Shop Now</a>
                </div>
            </div>
            <div class="slide-2">
                <img src="../views/img/slider/slide-2.jpg">
                <div class="slider-text">
                    <h3>Sale 20% off</h3>
                    <h2>Women's Fashion</h2>
                    <a href="#">Shop Now</a>
                </div>
            </div>
            <div class="slide-3">
                <img src="../views/img/slider/slide-3.jpg">
                <div class="slider-text">
                    <h3>Sale 50% off</h3>
                    <h2>Women's Collection</h2>
                    <a href="#">Shop Now</a>
                </div>
            </div>
        </div> <!-- slider -->

        <div class="new-product-section">
            <div class="product-section-heading">
                <h2>Tranding Products <img src="../views/img/icons/increase.png"></h2>
                <h3>Most selling product for the month</h3>
            </div>

            <div class="product-content">
            <%
                try {
                    String url = "jdbc:mysql://localhost:3306/springproject";
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection(url, "bisry", "password");
                    Statement stmt = con.createStatement();
                    Statement stmt2 = con.createStatement();
                    ResultSet rs = stmt.executeQuery("select * from products");
            %>
            <%
                for (int i=0; i < 4; i++) {
                    rs.next();
            %>
                <div class="product">
                    <a href="product">
                        <img src="../views/img/product/img1.jpg">
                    </a>
                    <div class="product-detail">
                        <h3>
                            <%
                                int categoryid = rs.getInt(4);
                                ResultSet rs2 = stmt2.executeQuery("select * from categories where categoryid = "+categoryid+";");
                                if(rs2.next())
                                {
                                    out.print(rs2.getString(2));
                                }
                            %>
                        </h3>
                        <h2>
                            <%= rs.getString(2) %>
                        </h2>
                        <a href="#">Add to Cart</a>
                        <p>
                            <%= rs.getInt(5) %> Birr.
                        </p>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
        </div> <!-- New Product Section -->
                <%
                } catch (Exception ex) {
                out.println("Exception Occurred:: " + ex.getMessage());
                }
                %>

        <div class="collection">
            <div class="men-collection">
                <h2>Men's Collection</h2>
            </div>
            <div class="women-collection">
                <h2>Women's Collection</h2>
            </div>
        </div> <!-- Collection Section -->

        <div class="new-product-section">
            <div class="product-section-heading">
                <h2>Recommend Products <img src="../views/img/icons/good_quality.png"></h2>
                <h3>OUR BEST PRODUCTS RECOMMENDED FOR YOU</h3>
            </div>
            <div class="product-content">
                <%
                    try {
                        String url = "jdbc:mysql://localhost:3306/springproject";
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection(url, "bisry", "password");
                        Statement stmt = con.createStatement();
                        Statement stmt2 = con.createStatement();
                        ResultSet rs = stmt.executeQuery("select * from products");
                %>
                <%
                    for (int i=0; i < 4; i++) {
                        rs.next();
                %>
                <div class="product">
                    <a href="product">
                        <img src="../views/img/product/img1.jpg">
                    </a>
                    <div class="product-detail">
                        <h3>
                            <%
                                int categoryid = rs.getInt(4);
                                ResultSet rs2 = stmt2.executeQuery("select * from categories where categoryid = "+categoryid+";");
                                if(rs2.next())
                                {
                                    out.print(rs2.getString(2));
                                }
                            %>
                        </h3>
                        <h2>
                            <%= rs.getString(2) %>
                        </h2>
                        <a href="#">Add to Cart</a>
                        <p>
                            <%= rs.getInt(5) %> Birr.
                        </p>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <%
                } catch (Exception ex) {
                out.println("Exception Occurred:: " + ex.getMessage());
                }
                %>
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
                        <li><a href="/about">About</a></li>
                        <li><a href="/contact">Contact</a></li>
                        <li><a href="/refund">Refund Policy</a></li>
                        <li><a href="/terms">Terms & Conditions</a></li>
                    </ul>
                </div>
            </div>
            <div class="widget">
                <div class="widget-heading">
                    <h3>Information</h3>
                </div>
                <div class="widget-content">
                    <ul>
                        <li><a href="/account">My Account</a></li>
                        <li><a href="/orders">My Orders</a></li>
                        <li><a href="/cart">Cart</a></li>
                        <li><a href="/checkout">Checkout</a></li>
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