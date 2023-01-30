<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="common/meta.jspf"%>
    <title>My Cart - GM</title>
    <script>
        $(document).ready(function(){

            $('.prev').on("click", function(){

                var prev = $(this).closest('.qty').find("input").val();

                if (prev == 1) {
                    $(this).closest('.qty').find("input").val('1');
                }else{
                    var prevVal = prev - 1;
                    $(this).closest('.qty').find("input").val(prevVal);
                }
            });
            $('.next').on("click", function(){

                var next = $(this).closest('.qty').find("input").val();

                if (next == 1000) {
                    $(this).closest('.qty').find("input").val('10');
                }else{
                    var nextVal = ++next;
                    $(this).closest('.qty').find("input").val(nextVal);
                }
            });
        });
    </script>
</head>
<body>

<%@include file="common/header.jspf"%>

<div class="container">
    <main>
        <div class="breadcrumb">
            <ul>
                <li><a href="index">Home</a></li>
                <li> / </li>
                <li><a href="shop">Shop</a></li>
                <li> / </li>
                <li>Cart</li>
            </ul>
        </div> <!-- End of Breadcrumb-->

        <h2>Shopping Cart</h2>
        <div class="cart-page">
            <div class="cart-items">
                <table>
                    <tbody>
                    <%
                        try {
                            String url = "jdbc:mysql://localhost:3306/grainmill";
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection(url, "bisry", "password");
                            Statement stmt = con.createStatement();
                            Statement stmt2 = con.createStatement();
                            ResultSet rs = stmt.executeQuery(" select * from products join cart on products.id = cart.productId join categories c on c.category_id = products.category_id;");
                    %>
                    <%
                        while (rs.next()){
                    %>
                    <tr>
                        <td style="width: 20%;"><img src="../views/img/product/img<%= rs.getInt(1) %>.jpg"></td>
                        <td style="width: 60%;">
                            <h2><%=rs.getString(2)%></h2>
                            <p><%= rs.getString(8)%></p>
                            <br>
                            <h3>Price: <%= rs.getInt(3)%> Birr</h3>
                            <br>
                            <a href="cart/remove?cid=<%= rs.getInt(10) %>">x</a> Remove
                        </td>
                        <td class="qty" style="width: 15%;">
                            <div class="prev">-</div>
                            <div class="next">+</div>
                            <input type="number" name="cartNumber" class="cartNumber" value="<%= rs.getInt(13)%>" min="0">
                            <br><br>
                            <h3><%= rs.getInt(3) * rs.getInt(13)%> Birr</h3>
                        </td>
                    </tr>
                    <%}%>
                    <%
                        } catch (Exception ex) {
                            out.println("Exception Occurred:: " + ex.getMessage());
                        }
                    %>
                    </tbody>
                    <thead>
                    <tr>
                        <th colspan="3">Cart Items</th>
                    </tr>
                    </thead>
                </table>
                <div class="pagination">
                    <ul>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                    </ul>
                </div>
            </div>
            <div class="cart-summary">
                <div class="checkout-total">
                    <h3>Cart Summary</h3>
                    <ul>
                        <li>Number of Products x 15</li>
                        <li>Number of items x 20</li>
                        <hr>
                        <li>Cart Total <span style="float: right;">1200 Birr</span></li>
                        <li><a href="checkout">Go to Checkout</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </main> <!-- Main Area -->
</div>

<%@include file="common/footer.jspf"%>

</body>

</html>