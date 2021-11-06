/**
 * when press cancel trip button re-direct to deleteTrip.jsp file
 */
 
function cancelTrip(){
	location.replace("deleteTrip.jsp")
}

/*when press cancel button and order cancelation sucessful popup the message*/
function cancelAlert(){
	
	alert("Cancel your trip!! THANK YOU");
}

/*search order details by click enter key*/

document.getElementById('search').addEventListener("keypress",function(event){
	search(event.key);

});

function search(){
	if (key == "Enter"){
		document.search.submit();
	}
	else{
		alert("invalid details");
	}
}