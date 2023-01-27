<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Title -->
    <title>GM - Admin</title>
    <!-- Style Sheet -->
    <link rel="stylesheet" type="text/css" href="../views/css/astyle.css" />
</head>
<body>

<header>
    <div class="container">
        <div class="brand">
            <div class="logo">
                <a href="adminhome">
                    <img src="../views/img/icons/online_shopping.png">
                    <div class="logo-text">
                        <p class="big-logo">Grain Mill</p>
                        <p class="small-logo">Market&Delivery</p>
                    </div>
                </a>
            </div> <!-- logo -->
            <div class="shop-icon">
                <div class="dropdown">
                    <img src="../views/img/icons/account.png">
                    <div class="dropdown-menu">
                        <ul>
                            <li><a href="#">My Account</a></li>
                            <li><a href="#">Settings</a></li>
                            <li><a href="#">Logout</a></li>
                        </ul>
                    </div>
                </div>
            </div> <!-- shop icons -->
        </div> <!-- brand -->
    </div> <!-- container -->
</header> <!-- header -->

<main>


<div class="main-content">
    <div class="sidebar">
        <h3>Menu</h3>
        <ul>
            <li><a href="adminhome">Home</a></li>
            <li><a href="orders">Order</a></li>
            <li><a href="addProduct">Product</a></li>
            <li><a href="addCategory">Category</a></li>
            <li><a class="active" href="addStock">Stock</a></li>
            <li><a href="users">Users</a></li>
        </ul>
    </div>
    <div class="content">
        <h3>Stock</h3>
        <div class="content-data">
            <div class="content-form">
                <form>
                    <h4>Add Stock</h4>
                    <div class="form-inline">
                        <div class="form-group">
                            <label>Product Name</label>
                            <select name="pname">
                                <option>---Select a Product---</option>
                                <option value="men">Men</option>
                                <option value="women">Women</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Quantity</label>
                            <input type="text" name="pqty">
                        </div>
                    </div>
                    <div class="form-group">
                        <label></label>
                        <input type="submit" name="addStock" value="Add Stock">
                    </div>
                </form>
            </div>
            <div class="content-detail">
                <h4>All Stock Detail</h4>
                <table>
                    <thead>
                    <tr>
                        <th>Product</th>
                        <th>Category</th>
                        <th>Stock in</th>
                        <th>Stock Out</th>
                        <th>Available</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Blue Jeans</td>
                        <td>Jeans</td>
                        <td>10</td>
                        <td>3</td>
                        <td>7</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </div>

</main> <!-- Main Area -->

<footer>
    <div class="container">
        <div class="footer-bar">
            <div class="copyright-text">
                <p>Copryright 2023 - All Rights Reserved</p>
            </div>
        </div> <!-- Footer Bar -->
    </div>
</footer> <!-- Footer Area -->

</body>

</html>