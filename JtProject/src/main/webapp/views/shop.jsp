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
    <title>GM - Shop</title>
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

<%@include file="common/header.jspf"%>

<div class="container" >
    <main >

        <div class="breadcrumb">
            <ul>
                <li><a href="/index">Home</a></li>
                <li> / </li>
                <li>Shop</li>
            </ul>
        </div> <!-- End of Breadcrumb-->

        <div class="new-product-section shop">
            <div class="sidebar">
                <div class="sidebar-widget">
                    <h3>Category</h3>
                    <ul>
                        <%
                            try {
                                String url = "jdbc:mysql://localhost:3306/grainmill";
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                Connection con = DriverManager.getConnection(url, "bisry", "password");
                                Statement stmt = con.createStatement();
                                ResultSet rs = stmt.executeQuery("select * from categories");

                        %>
                        <%
                            while (rs.next()) {
                        %>
                        <li><a href=""><%= rs.getString(2)%></a></li>
                        <%
                                }
                            } catch (Exception ex) {
                                out.println("Exception Occurred:: " + ex.getMessage());
                            }
                        %>
                    </ul>
                </div>
                <div class="sidebar-widget">
                    <h3>Range Filter</h3>
                    <p>
                        <label for="amount"></label>
                        <input type="text" id="amount" readonly style="border:0; color:#F0E68C;  margin-bottom: 5px;">
                    </p>
                    <div id="slider-range"></div>
                </div>
            </div>
            <div class="product-content">

                <%
                    try {
                        String url = "jdbc:mysql://localhost:3306/grainmill";
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection(url, "bisry", "password");
                        Statement stmt = con.createStatement();
                        Statement stmt2 = con.createStatement();
                        ResultSet rs = stmt.executeQuery("select * from products join categories c on c.category_id = products.category_id");

                %>
                <%
                    while (rs.next()) {
                %>

                <div class="product">
                    <a href="product?pid=<%= rs.getString(1) %>">
                        <img src="../views/img/product/img<%= rs.getString(7) %>">
                    </a>
                    <div class="product-detail">
                        <h3>
                            <%= rs.getString(11) %>
                        </h3>
                        <h2>
                            <%= rs.getString(2) %>
                        </h2>
                        <a href="#">Add to Cart</a>
                        <p>
                            <%= rs.getInt(3) %> Birr.
                        </p>
                    </div>
                </div>
                <%
                        }
                    } catch (Exception ex) {
                        out.println("Exception Occurred:: " + ex.getMessage());
                    }
                %>

            </div>
        </div> <!-- New Product Section -->
        <div class="load-more">
            <a href="#">Load More</a>
        </div>

    </main> <!-- Main Area -->
</div>

<%@include file="common/footer.jspf"%>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>