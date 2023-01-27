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
				<li><a class="active" href="adminhome">Home</a></li>
				<li><a href="orders">Order</a></li>
				<li><a href="addProduct">Product</a></li>
				<li><a href="addCategory">Category</a></li>
				<li><a href="addStock">Stock</a></li>
				<li><a href="users">Users</a></li>
			</ul>
		</div>
		<div class="content dashboard">
			<h3>Dashboard</h3>
			<div class="content-data">
				<div class="content-detail">
					<h4>Low Stock Report</h4>
					<table>
						<thead>
						<tr>
							<th>Product</th>
							<th>Price</th>
							<th>Category</th>
							<th>Qty</th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>Blue Jeans</td>
							<td>1500</td>
							<td>Pants</td>
							<td>2</td>
						</tr>
						</tbody>
					</table>
				</div>
				<div class="content-detail">
					<h4>Recent Order</h4>
					<table>
						<thead>
						<tr>
							<th>Date</th>
							<th>Order Ref#</th>
							<th>User</th>
							<th>Amount</th>
							<th>View</th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>11-05-2020</td>
							<td>15895452</td>
							<td>Kamran</td>
							<td>1500</td>
							<td>View</td>
						</tr>
						</tbody>
					</table>
				</div>
				<div class="content-detail">
					<h4>Completed Order</h4>
					<table>
						<thead>
						<tr>
							<th>Date</th>
							<th>Order Ref#</th>
							<th>User</th>
							<th>Amount</th>
							<th>View</th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>11-05-2020</td>
							<td>15895452</td>
							<td>Kamran</td>
							<td>1500</td>
							<td>View</td>
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
				<p>Copryright 2020 - All Rights Reserved</p>
			</div>
		</div> <!-- Footer Bar -->
	</div>
</footer> <!-- Footer Area -->

</body>

</html>