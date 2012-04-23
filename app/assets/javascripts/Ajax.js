var AL  = AL  || {};

AL = (function($, window, document, AlumniLabs){
	var AlumniLabs = AL;
	// Wrapper around basic Jquery Ajax options
	AlumniLabs.Ajax = {
		sendRequest: function(options, callback, errback){
			var ajaxOptions = {
				url:'/',
				type:'GET',
				dataType:'json',
				success: function(response){
					callback(response);
				},
				error: function(response){
					if(errback != undefined)
						errback(response);
					else                    
						console.log('Ajax Error Returned');
						console.log(response);
				}
			}
			
			if(options)
				$.extend(ajaxOptions, options);
				
			 $.ajax(ajaxOptions); 
		},
		                               
		// Basic wrapper around standard Jquery Jsonp request.
		sendJSONp: function(url, data, callback){
			url += '?callback=?'
			$.getJSON(url, data, function(response){
				callback(response);
			});
		 }
	}
	
	
	   
	return AlumniLabs;
})(jQuery, this, this.document, AL)
