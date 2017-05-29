function loadProductDetails() {
	var hacktronicAPI = new HacktronicAPI();
	hacktronicAPI.setBaseURL("http://localhost:8080");
	var urlParams = new URLSearchParams(window.location.search);
	var id = urlParams.get('id');
	
	var request = hacktronicAPI.getProdcutDetails(id);
	request.done(function(data) {
		document.getElementById("product-title").innerHTML = data.name;
		document.getElementById("product-manufacturer").innerHTML = data.manufacturer;
		document.getElementById("product-price").innerHTML = "$"+data.price;
		document.getElementById("product-description").innerHTML = data.description;
		document.getElementById("product-unitsInStock").innerHTML = data.unitsInStock + " items in stock";
	}).fail(function(jqXHR, textStatus, errorThrown) {

		if (jqXHR.status === 401) { // HTTP Status 401: Unauthorized
			window.location = 'login.html';

		} else {
			console.error('Houston, we have a problem...');
		}
	});

}

function newComment(){
	
	var hacktronicAPI = new HacktronicAPI();
	hacktronicAPI.setBaseURL("http://localhost:8080");
	var elements = document.getElementById("commentForm").elements;
    var comment ={};
    for(var i = 0 ; i < elements.length; i++){
        var item = elements.item(i);
        comment[item.name] = item.value;
    }
    var urlParams = new URLSearchParams(window.location.search);
    var id = urlParams.get('id');
    
    console.log(comment);
    var request = hacktronicAPI.registerComment(comment, id);
    request.done(function( data ) {
    	
	});
	
}

function loadComments(){
	var hacktronicAPI = new HacktronicAPI();
	hacktronicAPI.setBaseURL("http://localhost:8080");

    var urlParams = new URLSearchParams(window.location.search);
    var id = urlParams.get('id');
    
	// Grab the template script
	var theTemplateScript = $("#address-template").html();

	// Compile the template
	var theTemplate = Handlebars.compile(theTemplateScript);
    
    var request = hacktronicAPI.getComments(id);
    request.done(function( data ) {
    	var comments = {
    			comment : []
    		};

    		for ( var i in data) {
    			var item = data[i];
    			comments.comment.push({
    				"title" : item.title,
    				"message" : item.message,
    				"user" : "By " + item.user
    			});
    		}
    		console.log(comments);
    		var theCompiledHtml = theTemplate(comments);
    		$('#content-placeholder').html(theCompiledHtml);
	});
}

function addToCart(){
	var hacktronicAPI = new HacktronicAPI();
	hacktronicAPI.setBaseURL("http://localhost:8080");
	var quantity = document.getElementById("quantity").value;
	var urlParams = new URLSearchParams(window.location.search);
	var id = urlParams.get('id');
	
	console.log(quantity);
	for(var i=0; i<quantity; i++){
		var request = hacktronicAPI.addToCart(id);
		request.done(function( data ) {
			console.log(data);
			
		}).fail(function (jqXHR, textStatus, errorThrown) {

			if (jqXHR.status === 401) { // HTTP Status 401: Unauthorized
				window.location = 'login.html';

			} else {
				console.error('Houston, we have a problem...');
			}
		});
	}
}