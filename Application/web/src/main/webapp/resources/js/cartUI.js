function loadCart(){
	
	var hacktronicAPI = new HacktronicAPI();
	hacktronicAPI.setBaseURL("http://localhost:8080");
	
	// Grab the template script
	var theTemplateScript = $("#address-template").html();

	// Compile the template
	var theTemplate = Handlebars.compile(theTemplateScript);
	
	console.log("test");
	var request = hacktronicAPI.getShoppingCart();
	request.done(function(data) {
		console.log(data);
		var productsInfo = {
			productInfo : []
		};

		for ( var i in data.products) {
			var item = data.products[i];
			productsInfo.productInfo.push({
				"productName" : item.name,
				"description" : item.description,
				"price" : item.price,
				"id" : item.id
			});
		}
		console.log(productsInfo);
		var theCompiledHtml = theTemplate(productsInfo);
		$('#content-placeholder').html(theCompiledHtml);
		
		
		document.getElementById("headerCart").innerHTML = "SHOPPING CART " + data.numberOfProducts + " ITEMS";
		document.getElementById("grandTotal").innerHTML = "Total price " + data.total + "$";

	}).fail(function(jqXHR, textStatus, errorThrown) {

		if (jqXHR.status === 401) { // HTTP Status 401: Unauthorized
			window.location = 'login.html';

		} else {
			console.error('Houston, we have a problem...');
		}
	});
}

function removeItem(productId){
	var hacktronicAPI = new HacktronicAPI();
	hacktronicAPI.setBaseURL("http://localhost:8080");
    
	console.log("test");
    var request = hacktronicAPI.deleteCartItem(productId);
	request.done(function( data ) {
		
		
	}).fail(function (jqXHR, textStatus, errorThrown) {

		if (jqXHR.status === 401) { // HTTP Status 401: Unauthorized
			window.location = 'login.html';

		} else {
			console.error('Houston, we have a problem...');
		}
	});
	
	window.location = 'product_summary.html';
}