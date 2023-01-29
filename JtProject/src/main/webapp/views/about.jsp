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

    <title>GM - Home</title>

    <link rel="stylesheet" type="text/css" href="../views/css/style.css" />

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

<%@include file="common/header2.jspf"%>

<div class="container" >
    <main >
        <div class="about">
            <h2 class="heading">About</h2>
            <p>Lorem ipsum dolor, sit amet consectetur, adipisicing elit. Odit quas animi, unde? Autem at pariatur quia laboriosam soluta, quibusdam voluptates incidunt quos eligendi architecto tenetur, amet, cupiditate in recusandae, sint quaerat sunt reiciendis voluptatum repudiandae similique odio molestiae laudantium. Fugit illum voluptatum esse facilis, omnis dolorum amet ut sed ea magnam vitae quaerat dolor. Cum dolorum ducimus similique nostrum laudantium pariatur, repudiandae, libero ratione id ut culpa ea consequuntur quia totam magnam quasi quis doloremque dolor quibusdam tenetur asperiores reiciendis! Cupiditate illum, praesentium facere quibusdam minima facilis quam voluptatem, in vel tenetur dolores repellat assumenda ducimus quas distinctio sequi ab numquam sunt laudantium voluptatibus modi dolor at nulla. Amet accusamus officiis itaque reiciendis architecto repellat, suscipit? Modi distinctio rerum voluptatum, natus, ad repellendus corporis adipisci veritatis aliquam, commodi sed non recusandae nesciunt facere mollitia optio, ipsa eligendi minus sequi amet? Officiis distinctio mollitia, laborum beatae deleniti sint, ipsa soluta similique?</p>
        </div>
    </main> <!-- Main Area -->
</div>

<%@include file="common/footer.jspf"%>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>