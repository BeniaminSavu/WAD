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
				<div class="span6">
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
						src="themes/images/logo.png" alt="Bootsshop" /></a>
					<form class="form-inline navbar-search" method="post"
						action="products.html">
						<input id="srchFld" class="srchTxt" type="text" />
						<button type="submit" id="submitButton" class="btn btn-primary">Go</button>
					</form>
					<ul id="topMenu" class="nav pull-right">
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
							src="themes/images/ico-cart.png" alt="cart">3 Items in your
							cart <span class="badge badge-warning pull-right">$155.00</span></a>
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
						<li><a href="products.html">Products</a> <span
							class="divider">/</span></li>
						<li class="active">product Details</li>
					</ul>
					<div class="row">
						<div id="gallery" class="span3">
							<a href=<c:url value="/resource/images/products/large/f1.jpg"/>
								title="Fujifilm FinePix S2950 Digital Camera"> <img
								src=<c:url value="/resource/images/products/large/3.jpg"/>
								style="width: 100%" alt="Fujifilm FinePix S2950 Digital Camera" />
							</a>

						</div>
						
						<div class="span6">
							<h3 id="product-title">Fujifilm FinePix S2950 Digital Camera</h3>
							<hr class="soft" />
							<form class="form-horizontal qtyFrm">
								<div class="control-group">
									<label class="control-label"><span id="product-price">$222.00</span></label>
									<div class="controls">
										<input type="number" class="span1" placeholder="Qty." />
										<button type="submit"
											class="btn btn-large btn-primary pull-right">
											Add to cart <i class=" icon-shopping-cart"></i>
										</button>
									</div>
								</div>
							</form>

							<hr class="soft" />
							<h4 id="product-unitsInStock">100 items in stock</h4>
							<hr class="soft clr" />
							<p id="product-description">14 Megapixels. 18.0 x Optical Zoom. 3.0-inch LCD Screen.
								Full HD photos and 1280 x 720p HD movie capture. ISO sensitivity
								ISO6400 at reduced resolution. Tracking Auto Focus. Motion
								Panorama Mode. Face Detection technology with Blink detection
								and Smile and shoot mode. 4 x AA batteries not included. WxDxH
								110.2 ×81.4x73.4mm. Weight 0.341kg (excluding battery and
								memory card). Weight 0.437kg (including battery and memory
								card).</p>


							<hr class="soft" />
						</div>

						<div class="span9">

							<div id="myTabContent" class="tab-content">
								<div class="tab-pane fade active in" id="home">
									<h4>Comments</h4>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- MainBody End ============================= -->
		<!-- Footer ================================================================== -->
		<div id="footerSection">
			<div class="container">
				<p class="pull-right">&copy; Bootshop</p>
			</div>
			<!-- Container End -->
		</div>
		<!-- Placed at the end of the document so the pages load faster ============================================= -->
		<script src=<c:url value="/resource/js/jquery.js"/>
			type="text/javascript"></script>
		<script src=<c:url value="/resource/js/bootstrap.min.js"/>
			type="text/javascript"></script>
</body>
</html>