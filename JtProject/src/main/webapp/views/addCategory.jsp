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

<%@include file="common/header3.jspf"%>

<main>

    <div class="main-content">
        <div class="sidebar">
            <h3>Menu</h3>
            <ul>
                <li><a href="adminhome">Home</a></li>
                <li><a href="orders">Order</a></li>
                <li><a href="addProduct">Product</a></li>
                <li><a class="active" href="addCategory">Category</a></li>
                <li><a href="addStock">Stock</a></li>
                <li><a href="users">Users</a></li>
            </ul>
        </div>
        <div class="content">
            <h3>Catogory</h3>
            <div class="content-data">
                <div class="content-form">
                    <form>
                        <h4>Add Category</h4>
                        <div class="form-inline">
                            <div class="form-group">
                                <label>Category Name</label>
                                <input type="text" name="cat_name">
                            </div>
                            <div class="form-group">
                                <label>Category Type</label>
                                <select name="cat_type">
                                    <option>---Select a Type---</option>
                                    <option value="men">Men</option>
                                    <option value="women">Women</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label></label>
                            <input type="submit" name="addCategory" value="Add Category">
                        </div>
                    </form>
                </div>
                <div class="content-detail">
                    <h4>All Categories</h4>
                    <table>
                        <thead>
                        <tr>
                            <th>Category</th>
                            <th>Type</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Jeans</td>
                            <td>Men</td>
                            <td>Edit</td>
                            <td>Delete</td>
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