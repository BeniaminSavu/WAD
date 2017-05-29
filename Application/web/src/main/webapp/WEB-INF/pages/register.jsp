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
				</div>
				<div class="span6">
					<div class="pull-right">
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
		<li class="active">Registration</li>
    </ul>
	<h3> Registration</h3>	
	<div class="well">
	<form class="form-horizontal" id="register" >
		<h4>Your personal information</h4>
		<!-- 
		<div class="control-group">
		<label class="control-label">Title <sup>*</sup></label>
		<div class="controls">
		<select class="span1" name="days">
			<option value="">-</option>
			<option value="1">Mr.</option>
			<option value="2">Mrs</option>
			<option value="3">Miss</option>
		</select>
		</div>
		</div>
		-->
		<div class="control-group">
			<label class="control-label" for="inputFname1">First name <sup>*</sup></label>
			<div class="controls">
			  <input name="firstName" type="text" id="firstName" placeholder="First Name">
			</div>
		 </div>
		 <div class="control-group">
			<label class="control-label" for="inputLnam">Last name <sup>*</sup></label>
			<div class="controls">
			  <input name="lastName" type="text" id="lastName" placeholder="Last Name">
			</div>
		 </div>
		 <div class="control-group">
			<label class="control-label" for="inputFname1">Username <sup>*</sup></label>
			<div class="controls">
			  <input name="username" type="text" id="username" placeholder="First Name">
			</div>
		 </div>
		<div class="control-group">
		<label class="control-label" for="input_email">Email <sup>*</sup></label>
		<div class="controls">
		  <input name="email" type="text" id="email" placeholder="Email">
		</div>
	  </div>	  
	<div class="control-group">
		<label class="control-label" for="inputPassword1">Password <sup>*</sup></label>
		<div class="controls">
		  <input name="password" type="password" id="password" placeholder="Password">
		</div>
	  </div>
	  <!-- 	  
		<div class="control-group">
		<label class="control-label">Date of Birth <sup>*</sup></label>
		<div class="controls">
		  <select class="span1" name="days">
				<option value="">-</option>
					<option value="1">1&nbsp;&nbsp;</option>
					<option value="2">2&nbsp;&nbsp;</option>
					<option value="3">3&nbsp;&nbsp;</option>
					<option value="4">4&nbsp;&nbsp;</option>
					<option value="5">5&nbsp;&nbsp;</option>
					<option value="6">6&nbsp;&nbsp;</option>
					<option value="7">7&nbsp;&nbsp;</option>
			</select>
			<select class="span1" name="days">
				<option value="">-</option>
					<option value="1">1&nbsp;&nbsp;</option>
					<option value="2">2&nbsp;&nbsp;</option>
					<option value="3">3&nbsp;&nbsp;</option>
					<option value="4">4&nbsp;&nbsp;</option>
					<option value="5">5&nbsp;&nbsp;</option>
					<option value="6">6&nbsp;&nbsp;</option>
					<option value="7">7&nbsp;&nbsp;</option>
			</select>
			<select class="span1" name="days">
				<option value="">-</option>
					<option value="1">1&nbsp;&nbsp;</option>
					<option value="2">2&nbsp;&nbsp;</option>
					<option value="3">3&nbsp;&nbsp;</option>
					<option value="4">4&nbsp;&nbsp;</option>
					<option value="5">5&nbsp;&nbsp;</option>
					<option value="6">6&nbsp;&nbsp;</option>
					<option value="7">7&nbsp;&nbsp;</option>
			</select>
		</div>
		 </div>
		 <div class="control-group">
			<label class="control-label" for="address">Address<sup>*</sup></label>
			<div class="controls">
			  <input type="text" id="address" placeholder="Adress"/>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="country">Country<sup>*</sup></label>
			<div class="controls">
			<select id="country" >
				<option value="">-</option>
				<option value="1">Country</option>
			</select>
			</div>
		</div>	
		<div class="control-group">
			<label class="control-label" for="mobile">Mobile Phone </label>
			<div class="controls">
			  <input type="text"  name="mobile" id="mobile" placeholder="Mobile Phone"/> 
			</div>
		</div>
		-->

	</form>
	<div class="control-group">
			<div class="controls" style="padding-left:180px">
				<input onclick="register()" class="btn btn-large btn-success" type="submit" value="Register" />
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
<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src=<c:url value="/resource/js/lib/jquery.js"/> type="text/javascript"></script>
	<script src=<c:url value="/resource/js/lib/bootstrap.min.js"/> type="text/javascript"></script>
	<script src=<c:url value="/resource/js/HacktronicAPI.js"/> type="text/javascript"></script>
	<script src=<c:url value="/resource/js/registerUI.js"/> type="text/javascript"></script>


</body>
</html>