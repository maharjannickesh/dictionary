$(document).ready(function(){
	
	
	
	
	
	$(".deleteBtn").click(function(event){
		
	    event.preventDefault();
	    
	    var lnk = $(".deleteBtn").attr('href');
	    
	    $('.deleteModal').modal();
	    $('.yesBtn').attr('href',lnk);
	  
	});


});



