$(function() {
	var userId;
	var gardens;
	var email;
	var admin;
	$.ajax({
		url: GARDEN.root + "user/currentUser",
		type: "GET",
		dataType: "json",
	}).done(function(data) {
		$("#spanUserId").text(data.userId);
		$("#spanGardens").text(data.gardens.length);
		for(var i = 0; i < data.gardens.length; i++) {
			$("#gardenList").append('<li>Name: '+ data.gardens[i].gardenName + ' Id: ' + data.gardens[i].gardenId + '</li>');
		}
		$("#spanEmailAddress").text(data.email);
		$("#spanAdmin").text(data.admin);
	});
	
});
