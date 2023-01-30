<%@ page import="java.sql.*" %>
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
            <li><a href="addCategory">Category</a></li>
            <li><a class="active" href="addStock">Stock</a></li>
            <li><a href="users">Users</a></li>
        </ul>
    </div>
    <div class="content">
        <h3>Stock</h3>
        <div class="content-data">
            <div class="content-form">
                <form action="addStk">
                    <h4>Add Stock</h4>
                    <div class="form-inline">
                        <div class="form-group">

                            <label>Product Name</label>
                            <select name="pname">
                                <option>---Select a Product---</option>
                                <%
                                    try {
                                        String url = "jdbc:mysql://localhost:3306/grainmill";
                                        Class.forName("com.mysql.cj.jdbc.Driver");
                                        Connection con = DriverManager.getConnection(url, "bisry", "password");
                                        Statement stmt = con.createStatement();
                                        ResultSet rs = stmt.executeQuery("select * from products");
                                        while (rs.next()) {
                                %>
                                    <option value="<%= rs.getInt(1)%>"><%= rs.getString(2)%></option>
                                <%}
                                    } catch (Exception e) {
                                    System.out.println("Exception: " + e);
                                }
                                %>
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
                        <th>ID</th>
                        <th>Product Name</th>
                        <th>Category</th>
                        <th>Stock in</th>
                        <th>Stock Out</th>
                        <th>Available</th>
                    </tr>
                    </thead>
                    <tbody>

                    <%
                        try {
                            String url = "jdbc:mysql://localhost:3306/grainmill";
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection(url, "bisry", "password");
                            Statement stmt = con.createStatement();
                            ResultSet rs = stmt.executeQuery("select * from products join categories c on c.category_id = products.category_id");
                            while (rs.next()) {
                    %>

                    <tr>
                        <td><%= rs.getInt(1)%></td>
                        <td><%= rs.getString(2)%></td>
                        <td><%= rs.getString(11)%></td>
                        <td><%= rs.getString(6)%></td>
                        <td><%= rs.getInt(6) - rs.getInt(6) %></td>
                        <td><%= rs.getString(6)%></td>
                    </tr>
                    <%}
                    } catch (Exception e) {
                        System.out.println("Exception: " + e);
                    }
                    %>
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