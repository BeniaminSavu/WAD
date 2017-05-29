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
		<li class="active"> SHOPPING CART</li>
    </ul>
	<h3 id="headerCart">  SHOPPING CART [ 3 Item(s) ]<a href="products.html" class="btn btn-large pull-right"><i class="icon-arrow-left"></i> Continue Shopping </a></h3>	
	<hr class="soft"/>		
	<table class="table table-bordered" >
	
		
			
				<thead>
                <tr>
                  <th>Product</th>
                  <th>Description</th>
                  <th>Quantity/Update</th>
				  <th>Price</th>
				  <th>Count</th>
				</tr>
              </thead>
              <tbody id="content-placeholder">
            <script id="address-template" type="text/x-handlebars-template">
			{{#each productInfo}}
                <tr>
                  <td>{{productName}}</td>
                  <td>{{description}}</td>
				  <td>
					<div class="input-append"><button class="btn" type="button" onclick="removeOneItem({{id}})"><i class="icon-minus"></i></button><button class="btn" type="button"><i class="icon-plus" onclick="addToCart({{id}})"></i></button><button onclick="removeItem({{id}})" class="btn btn-danger" type="button"><i class="icon-remove icon-white"></i></button>				</div>
				  </td>
                  <td>{{price}}</td>
					<td>{{count}}</td>
                </tr>
			{{/each}}
		</script>
              </table> 
			
			<table class="table table-bordered" >	
				
                <tr>
                  <td id="grandTotal" colspan="6" style="text-align:right">Total Price:	</td>
                  
                  </tr>
				</tbody>
				</table>
           
		
		
            
	<a href="products.html" class="btn btn-large"><i class="icon-arrow-left"></i> Continue Shopping </a>
	<a href="#" class="btn btn-large pull-right" onclick="checkout()")>Next <i class="icon-arrow-right"></i></a>
	
</div>
</div></div>
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
	<script src=<c:url value="/resource/js/lib/bootshop.js"/>></script>
	<script src=<c:url value="/resource/js/HacktronicAPI.js"/>
		type="text/javascript"></script>
	<script src=<c:url value="/resource/js/commonUI.js"/>
		type="text/javascript"></script>
	<script src=<c:url value="/resource/js/cartUI.js"/>
		type="text/javascript"></script>

	<script>
		$(document).ready(function() {
			loadUserFirstAndLastname();
			loadCart();
			loadShoppingCartMini();
		});
	</script>


	

</body>
</html>