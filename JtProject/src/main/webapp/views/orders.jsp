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
                <a href="index">
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
                <li><a class="active" href="orders">Order</a></li>
                <li><a href="addProduct">Product</a></li>
                <li><a href="addCategory.html">Category</a></li>
                <li><a href="addStock.html">Stock</a></li>
                <li><a href="users">Users</a></li>
            </ul>
        </div>
        <div class="content">
            <h3>Order</h3>
            <div class="content-detail">
                <table>
                    <thead>
                    <tr>
                        <th>Date</th>
                        <th>Order Ref#</th>
                        <th>User</th>
                        <th>Amount</th>
                        <th>Payment Mode</th>
                        <th>Status</th>
                        <th>View</th>
                        <th>Delete</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>11-05-2020</td>
                        <td>15895452</td>
                        <td>Kamran</td>
                        <td>1500</td>
                        <td>Cash On Delivery</td>
                        <td>Pending</td>
                        <td>View</td>
                        <td>Delete</td>
                    </tr>
                    </tbody>
                </table>
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