<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bootshop online Shopping cart</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap style -->
<link id="callCss" rel="stylesheet"
	href=<c:url value="/resource/css/bootstrap.min.css"/> media="screen" />
<link href=<c:url value="/resource/css/base.css"/> rel="stylesheet"
	media="screen" />
<!-- Bootstrap style responsive -->
<link href=<c:url value="/resource/css/bootstrap-responsive.min.css"/>
	rel="stylesheet" />
<link href=<c:url value="/resource/css/font-awesome.css"/>
	rel="stylesheet" type="text/css">
</head>
<body>
	<div id="header">
		<div class="container">
			<div id="welcomeLine" class="row">
				<div class="span6" id="userFullName">
					Welcome!<strong> User</strong>
				</div>
				<div class="span6">
					<div class="pull-right">
						<span class="btn btn-mini">$155.00</span> <a
							href="product_summary.html"><span
							class="btn btn-mini btn-primary"><i
								class="icon-shopping-cart icon-white"></i> [ 3 ] Itemes in your
								cart </span> </a>
					</div>
				</div>
			</div>
			<!-- Navbar ================================================== -->
			<div id="logoArea" class="navbar">

				<div class="navbar-inner">
					<a class="brand" href="index.html"><img
						src=<c:url value="/resource/images/logo.png"/> alt="Bootsshop" /></a>
					<form class="form-inline navbar-search" method="post"
						action="products.html">
						<input id="srchFld" class="srchTxt" type="text" />
						<button type="submit" id="submitButton" class="btn btn-primary">Go</button>
					</form>
					<ul id="topMenu" class="nav pull-right">
						<li class=""><a href="product_new.html">Add Product</a></li>
						<li class=""><a href="normal.html">Delivery</a></li>
						<li class=""><a href="contact.html">Contact</a></li>
						<li class=""><a href="login.html" role="button"
							style="padding-right: 0"><span
								class="btn btn-large btn-success">Login</span></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End====================================================================== -->
	<div id="mainBody">
		<div class="container">
			<div class="row">
				<!-- Sidebar ================================================== -->
				<div id="sidebar" class="span3">
					<div class="well well-small">
						<a id="myCart" href="product_summary.html"><img
							src=<c:url value="/resource/images/ico-cart.png"/> alt="cart">3
							Items in your cart <span class="badge badge-warning pull-right">$155.00</span></a>
					</div>
					<ul id="sideManu" class="nav nav-tabs nav-stacked">
						<li class="subMenu open"><a> PRODUCTS </a>
							<ul>
								<li><a class="active" href="products.html"><i
										class="icon-chevron-right"></i>Cameras</a></li>
								<li><a href="products.html"><i
										class="icon-chevron-right"></i>Computers, Tablets & laptop</a></li>
								<li><a href="products.html"><i
										class="icon-chevron-right"></i>Mobile Phone</a></li>
								<li><a href="products.html"><i
										class="icon-chevron-right"></i>Sound & Vision</a></li>
							</ul></li>
					</ul>
					<br />
				</div>
				<!-- Sidebar end=============================================== -->
				<div class="span9">
					<ul class="breadcrumb">
						<li><a href="index.html">Home</a> <span class="divider">/</span></li>
						<li class="active">Add Product</li>
					</ul>
					<h3>Add Product</h3>
					<div class="well">
						<form class="form-horizontal" id="newProduct">
							<h4>Product information</h4>
							<div class="control-group">
								<label class="control-label" for="inputFname1">Title <sup>*</sup></label>
								<div class="controls">
									<input name="name" type="text" id="name"
										placeholder="Product Title">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputLnam">Category <sup>*</sup></label>
								<div class="controls">
									<input name="category" type="text" id="category"
										placeholder="Category">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputLnam">Units in Stock <sup>*</sup></label>
								<div class="controls">
									<input name="unitsInStock" type="text" id="unitsInStock"
										placeholder="Units in Stock">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputLnam">Manufacturer <sup>*</sup></label>
								<div class="controls">
									<input name="manufacturer" type="text" id="manufacturer"
										placeholder="Manufacturer">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputFname1">Description
									<sup>*</sup>
								</label>
								<div class="controls">
									<textarea class="form-control input-lg" rows="3" cols="100"
										style="resize: none" name="description" id="description"
										placeholder="Enter your product description here"></textarea>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input_email">Price <sup>*</sup></label>
								<div class="controls">
									<input name="price" type="text" id="price" placeholder="Price">
								</div>
							</div>

						</form>
						<div class="control-group">
							<div class="controls" style="padding-left: 180px">
								<input onclick="registerProduct()" class="btn btn-large btn-success" type="submit"
									value="Register" />
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

<p id="log"></p>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
	<div  id="footerSection">
	<div class="container">
		<p class="pull-right">&copy; Bootshop</p>
	</div><!-- Container End -->
	</div>

	<script src=<c:url value="/resource/js/lib/jquery.js"/>
		type="text/javascript"></script>
	<script src=<c:url value="/resource/js/lib/bootstrap.min.js"/>
		type="text/javascript"></script>
	<script src=<c:url value="/resource/js/HacktronicAPI.js"/>
		type="text/javascript"></script>
	<script src=<c:url value="/resource/js/commonUI.js"/>
		type="text/javascript"></script>
	<script src=<c:url value="/resource/js/product_newUI.js"/>
		type="text/javascript"></script>
		
<script>
$(document).ready(function() {
	loadUserFirstAndLastname();
});  
  </script>

</body>
</html>