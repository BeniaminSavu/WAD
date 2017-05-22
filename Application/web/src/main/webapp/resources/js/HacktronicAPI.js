function HacktronicAPI() {

    if (typeof HacktronicAPI.instance === 'object') {
        return HacktronicAPI.instance;
    }

    var baseURL = "localhost";
	
    var doAsyncGet = function (partialUrl) {
        var fullUrl = baseURL + partialUrl;
        return $.ajax({
            url: fullUrl,
            type:"GET",
            headers: {
                "Content-Type":"application/json"
            },
            dataType: "json"
        });
    };

    var doAsyncDelete = function (partialURL)
    {
        var fullUrl = baseURL + partialURL;
        return $.ajax({
            url: fullUrl,
            type: "DELETE",
            headers: {
            	"Content-Type":"application/json"            
            },            
            dataType: "json"
        });
    }
    
    var doAsyncPost = function (partialURL, jsonDataToPost) {
        var fullUrl = baseURL + partialURL;
        return $.ajax({
            url: fullUrl,
            type: "POST",
            headers: {
                "Content-Type":"application/json"
            },
            data: JSON.stringify(jsonDataToPost),
            dataType: "json"
        });
    };
	
	this.setBaseURL = function (strBaseURL) {
        baseURL = strBaseURL;
    };
	
	this.registerUser = function(user){
		var postURL = "/web/signup";
        return doAsyncPost(postURL, user);
	};
	
	this.registerProduct = function(user){
		var postURL = "/web/hacktronic/product/add";
        return doAsyncPost(postURL, user);
	};
	
	this.loginUser = function(user){
		var postURL = "/web/login";
        return doAsyncPost(postURL, user);
	};
	
	this.getUserFirstAndLastname = function(){
		var apiURL = "/web/hacktronic/user/fullname";
		return doAsyncGet(apiURL);
	};
	
	this.getLatestProducts = function(){
		var apiURL = "/web/hacktronic/product/latest";
		return doAsyncGet(apiURL);
		
	};
	
	
	HacktronicAPI.instance = this;
}