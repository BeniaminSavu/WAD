function loadUserFirstAndLastname(){
	var hacktronicAPI = new HacktronicAPI();
	hacktronicAPI.setBaseURL("http://localhost:8080");
    
	console.log("test");
    var request = hacktronicAPI.getUserFirstAndLastname();
	request.done(function( data ) {
		console.log(data);
    	document.getElementById("userFullName").innerHTML = data.firstName + " " + data.lastName;
		
	}).fail(function (jqXHR, textStatus, errorThrown) {

		if (jqXHR.status === 401) { // HTTP Status 401: Unauthorized
			window.location = 'login.html';

		} else {
			console.error('Houston, we have a problem...');
		}
	});
}
