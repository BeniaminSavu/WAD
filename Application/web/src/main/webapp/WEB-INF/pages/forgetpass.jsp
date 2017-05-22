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
	<div class="span6">Welcome!<strong> User</strong></div>
	<div class="span6">
	<div class="pull-right">
		<span class="btn btn-mini">$155.00</span>
		<a href="product_summary.html"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i> [ 3 ] Itemes in your cart </span> </a> 
	</div>
	</div>
</div>
<!-- Navbar ================================================== -->
<div id="logoArea" class="navbar">

  <div class="navbar-inner">
    <a class="brand" href="index.html"><img src=<c:url value="/resource/images/logo.png"/> alt="Bootsshop"/></a>
		<form class="form-inline navbar-search" method="post" action="products.html" >
		<input id="srchFld" class="srchTxt" type="text" />
		  <button type="submit" id="submitButton" class="btn btn-primary">Go</button>
		</form>
    <ul id="topMenu" class="nav pull-right">
	 <li class=""><a href="normal.html">Delivery</a></li>
	 <li class=""><a href="contact.html">Contact</a></li>
	 <li class="">
	 <a href="login.html" role="button" style="padding-right:0"><span class="btn btn-large btn-success">Login</span></a>
	 </li>
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
		<div class="well well-small"><a id="myCart" href="product_summary.html"><img src="themes/images/ico-cart.png" alt="cart">3 Items in your cart  <span class="badge badge-warning pull-right">$155.00</span></a></div>
		<ul id="sideManu" class="nav nav-tabs nav-stacked">
			<li class="subMenu open"><a> PRODUCTS </a>
				<ul>
				<li><a class="active" href="products.html"><i class="icon-chevron-right"></i>Cameras</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>Computers, Tablets & laptop</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>Mobile Phone</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>Sound & Vision</a></li>
				</ul>
			</li>
		</ul>
		<br/>
	</div>
<!-- Sidebar end=============================================== -->
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.html">Home</a> <span class="divider">/</span></li>
		<li class="active">Forget password?</li>
    </ul>
	<h3> FORGET YOUR PASSWORD?</h3>	
	<hr class="soft"/>
	
	<div class="row">
		<div class="span9" style="min-height:500px">
			<div class="well">
			<h5>Reset your password</h5><br/>
			Please enter the email address for your account. A verification code will be sent to you. Once you have received the verification code, you will be able to choose a new password for your account.<br/><br/><br/>
			<form>
			  <div class="control-group">
				<label class="control-label" for="inputEmail1">E-mail address</label>
				<div class="controls">
				  <input class="span3"  type="text" id="inputEmail1" placeholder="Email">
				</div>
			  </div>
			  <div class="controls">
			  <button type="submit" class="btn block">Submit</button>
			  </div>
			</form>
		</div>
		</div>
	</div>	
	
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
	<script src=<c:url value="/resource/js/jquery.js"/> type="text/javascript"></script>
	<script src=<c:url value="/resource/js/bootstrap.min.js"/> type="text/javascript"></script>

</body>
</html>