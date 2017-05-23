function loadLatestProducts() {
	var hacktronicAPI = new HacktronicAPI();
	hacktronicAPI.setBaseURL("http://localhost:8080");
	
	// Grab the template script
	var theTemplateScript = $("#address-template").html();

	// Compile the template
	var theTemplate = Handlebars.compile(theTemplateScript);
	
	console.log("test");
	var request = hacktronicAPI.getLatestProducts();
	request.done(function(data) {
		var productsInfo = {
			productInfo : []
		};

		for ( var i in data) {
			var item = data[i];
			productsInfo.productInfo.push({
				"name" : item.name,
				"description" : item.description,
				"price" : item.price,
				"id" : item.id
			});
		}
		console.log(productsInfo);
		var theCompiledHtml = theTemplate(productsInfo);
		$('#content-placeholder').html(theCompiledHtml);

	}).fail(function(jqXHR, textStatus, errorThrown) {

		if (jqXHR.status === 401) { // HTTP Status 401: Unauthorized
			window.location = 'login.html';

		} else {
			console.error('Houston, we have a problem...');
		}
	});

}