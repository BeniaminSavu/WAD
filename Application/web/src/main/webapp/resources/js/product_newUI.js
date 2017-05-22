function registerProduct(){
	var hacktronicAPI = new HacktronicAPI();
	hacktronicAPI.setBaseURL("http://localhost:8080");
	var elements = document.getElementById("newProduct").elements;
    var product ={};
    for(var i = 0 ; i < elements.length; i++){
        var item = elements.item(i);
        product[item.name] = item.value;
    }
    
    console.log(product);
    var request = hacktronicAPI.registerProduct(product);
    request.done(function( data ) {
    	document.getElementById("log").innerHTML = data.message;
	});
	
	
}