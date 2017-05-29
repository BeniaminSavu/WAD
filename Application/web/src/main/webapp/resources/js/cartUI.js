function countObject(obj, list) {
    var i;
    var count = 0;
    var mark=-1;
    for (i = 0; i < list.length; i++) {
        if (list[i].id === obj) {
            count++;
            if(mark===-1){
            	mark = i;
            }
        }
    }

    list.splice(mark, count);
    return count;
}

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

		while (data.products.length > 0) {
			console.log(data.products);
			var item = data.products[0];
			var count = countObject(item.id, data.products);
			productsInfo.productInfo.push({
				"productName" : item.name,
				"description" : item.description,
				"price" : item.price,
				"id" : item.id,
				"count" : count
			});
			
		}
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
		
		window.location = 'product_summary.html';
	}).fail(function (jqXHR, textStatus, errorThrown) {

		if (jqXHR.status === 401) { // HTTP Status 401: Unauthorized
			window.location = 'login.html';

		} else {
			console.error('Houston, we have a problem...');
		}
		window.location = 'product_summary.html';
	});
	
	
}

function removeOneItem(productId){
	var hacktronicAPI = new HacktronicAPI();
	hacktronicAPI.setBaseURL("http://localhost:8080");
    
	console.log("test");
    var request = hacktronicAPI.deleteOneCartItem(productId);
	request.done(function( data ) {
		
		window.location = 'product_summary.html';
	}).fail(function (jqXHR, textStatus, errorThrown) {

		if (jqXHR.status === 401) { // HTTP Status 401: Unauthorized
			window.location = 'login.html';

		} else {
			console.error('Houston, we have a problem...');
		}
		window.location = 'product_summary.html';
	});
}

function addToCart(productId){
	var hacktronicAPI = new HacktronicAPI();
	hacktronicAPI.setBaseURL("http://localhost:8080");
	
	console.log("test");
    var request = hacktronicAPI.addToCart(productId);
	request.done(function( data ) {
		window.location = 'product_summary.html';
		
	}).fail(function (jqXHR, textStatus, errorThrown) {

		if (jqXHR.status === 401) { // HTTP Status 401: Unauthorized
			window.location = 'login.html';

		} else {
			console.error('Houston, we have a problem...');
		}
		window.location = 'product_summary.html';
	});
}

function checkout(){
	var hacktronicAPI = new HacktronicAPI();
	hacktronicAPI.setBaseURL("http://localhost:8080");
	
	console.log("test");
    var request = hacktronicAPI.checkout();
	request.done(function( data ) {
		window.location = 'product_summary.html';
		
	}).fail(function (jqXHR, textStatus, errorThrown) {

		if (jqXHR.status === 401) { // HTTP Status 401: Unauthorized
			window.location = 'login.html';

		} else {
			console.error('Houston, we have a problem...');
		}
		window.location = 'product_summary.html';
	});
}