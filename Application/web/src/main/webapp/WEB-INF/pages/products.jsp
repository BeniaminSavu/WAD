<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootshop online Shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<!-- Bootstrap style --> 
    <link id="callCss" rel="stylesheet" href=<c:url value="/resource/css/bootstrap.min.css"/> media="screen"/>
    <link href=<c:url value="/resource/css/base.css"/> rel="stylesheet" media="screen"/>
<!-- Bootstrap style responsive -->	
	<link href=<c:url value="/resource/css/bootstrap-responsive.min.css"/> rel="stylesheet"/>
	<link href=<c:url value="/resource/css/font-awesome.css"/> rel="stylesheet" type="text/css">
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
						<span class="btn btn-mini" id="total">$155.00</span> <a
							href="product_summary.html"><span id="info"
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
					<ul id="sideManu" class="nav nav-tabs nav-stacked">
						<li class="subMenu open"><a> PRODUCTS </a>
							<ul>
								<li><a class="active" href="products.html?type=camera"><i
										class="icon-chevron-right"></i>Cameras</a></li>
								<li><a href="products.html?type=computer"><i
										class="icon-chevron-right"></i>Computers, Tablets & laptop</a></li>
								<li><a href="products.html?type=mobile"><i
										class="icon-chevron-right"></i>Mobile Phone</a></li>
								<li><a href="products.html?type=sound"><i
										class="icon-chevron-right"></i>Sound & Vision</a></li>
							</ul></li>
					</ul>
					<br />
				</div>
				<!-- Sidebar end=============================================== -->

	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.html">Home</a> <span class="divider">/</span></li>
		<li class="active">Products Name</li>
    </ul>
	<h3> Products Name <small id ="products-available" class="pull-right"> 40 products are available </small></h3>	
	<hr class="soft"/>
	<p>
		Nowadays the lingerie industry is one of the most successful business spheres.We always stay in touch with the latest fashion tendencies - that is why our goods are so popular and we have a great number of faithful customers all over the country.
	</p>
	<hr class="soft"/>
	  

<br class="clr"/>
<div class="tab-content">
	<div class="tab-pane  active" id="blockView">
		<ul class="thumbnails" id="content-placeholder">
		<script id="address-template" type="text/x-handlebars-template">
				{{#each productInfo}}
				<li class="span3">
				  <div class="thumbnail">
					<a  href="product_details.html"><img src=<c:url value="/resource/images/products/3.jpg"/> alt=""/></a>
					<div class="caption">
					  <h5>{{name}}</h5>
					  <p> 
						{{description}} 
					  </p>
					 
					  <h4 style="text-align:center"><a class="btn" href="product_details.html?id={{id}}"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">{{price}}$</a></h4>
					</div>
				  </div>
				</li>
				{{/each}}
			</script>
		  </ul>
	<hr class="soft"/>
	</div>
</div>

			<br class="clr"/>
</div>
</div>
</div>
</div>
<!-- MainBody End ============================= -->
<!-- Footer ================================================================== -->
	<div  id="footerSection">
	<div class="container">
		<p class="pull-right">&copy; Bootshop</p>
	</div><!-- Container End -->
	</div>
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/2.0.0/handlebars.js"></script>
	<script src=<c:url value="/resource/js/lib/bootstrap.min.js"/>
		type="text/javascript"></script>
	<script src=<c:url value="/resource/js/HacktronicAPI.js"/>
		type="text/javascript"></script>
	<script src=<c:url value="/resource/js/commonUI.js"/>
		type="text/javascript"></script>
	<script src=<c:url value="/resource/js/productsUI.js"/>
		type="text/javascript"></script>	
		
		<script>
		$(document).ready(function() {
			loadUserFirstAndLastname();
			loadProductsByCategory();
			loadShoppingCartMini();
		});
	</script>	


</body>
</html>