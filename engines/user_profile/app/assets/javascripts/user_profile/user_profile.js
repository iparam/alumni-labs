var AL = AL || {};

AL = (function($, window, document, AlumiLabs){
 var AlumiLabs = AL;
	 	AlumniLabs.UserProfile = {
	 	 toggleAlumniYear: function(){
	 	  $("#user_alumni").click(function(){
	 	    alert("s");
	 	    // if($("#user_alumni").is(:checked))
	 	    if($("#user_alumni").attr("checked")== true)
	 	    {
	 	      $("#passing_year").toggle();
	 	      $("#current_year").toggle();
	 	    }
	 	    else{
	 	    	 	     $("#passing_year").toggle();
	 	      $("#current_year").toggle();
	 	    }
	 	    
	 	  });
	 	 }
		};
		$(document).ready(function(){
		$("#user_alumni").click(function(){
	 	    alert("s");
	 	   }); 
		  AlumiLabs.UserProfile.toggleAlumniYear();
		});
		  
return AlumiLabs;		  
	})(jQuery, this, this.document, AL);
