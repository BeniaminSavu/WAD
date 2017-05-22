function register(){
	var hacktronicAPI = new HacktronicAPI();
	hacktronicAPI.setBaseURL("http://localhost:8080");
	var elements = document.getElementById("register").elements;
    var user ={};
    for(var i = 0 ; i < elements.length; i++){
        var item = elements.item(i);
        user[item.name] = item.value;
    }
    
    console.log(user);
    var request = hacktronicAPI.registerUser(user);
    request.done(function( data ) {
    	document.getElementById("log").innerHTML = data.message;
	});
	
	
}