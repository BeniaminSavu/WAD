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
<div class="container" style="min-height:500px">
	<hr class="soften">
	<h1>Visit us</h1>
	<hr class="soften"/>	
	<div class="row">
		<div class="span4">
		<h4>Contact Details</h4>
		<p>	18 Fresno,<br/> CA 93727, USA
			<br/><br/>
			info@bootsshop.com<br/>
			﻿Tel 123-456-6780<br/>
			Fax 123-456-5679<br/>
			web:bootsshop.com
		</p>		
		</div>
			
		<div class="span4">
		<h4>Opening Hours</h4>
			<h5> Monday - Friday</h5>
			<p>09:00am - 09:00pm<br/><br/></p>
			<h5>Saturday</h5>
			<p>09:00am - 07:00pm<br/><br/></p>
			<h5>Sunday</h5>
			<p>12:30pm - 06:00pm<br/><br/></p>
		</div>
		<div class="span4">
		<h4>Email Us</h4>
		<form class="form-horizontal">
        <fieldset>
          <div class="control-group">
           
              <input type="text" placeholder="name" class="input-xlarge"/>
           
          </div>
		   <div class="control-group">
           
              <input type="text" placeholder="email" class="input-xlarge"/>
           
          </div>
		   <div class="control-group">
           
              <input type="text" placeholder="subject" class="input-xlarge"/>
          
          </div>
          <div class="control-group">
              <textarea rows="3" id="textarea" class="input-xlarge"></textarea>
           
          </div>

            <button class="btn btn-large" type="submit">Send Messages</button>

        </fieldset>
      </form>
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