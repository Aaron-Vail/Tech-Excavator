$(function() {
	alert("userId: " + userId + "\n"
	    + "gardens: " + gardens.length + "\n"
	    + "email address: " + email + "\n"
        + "is admin: " + admin);

	$.ajax({
		url: "/user/currentUser",
		type: "GET",
		dataType: "json"
	}).done(function(data) {
		var userId = data.userId;
		var gardens = data.gardens;
		var email = data.email;
		var admin = data.admin
	})
});