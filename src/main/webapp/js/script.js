$(function() {
	$.ajax({
		url: GARDEN.root + "user/currentUser",
		type: "GET",
		dataType: "json",
	}).done(function(data) {
		// $("#spanUserId").text(data.userId);
		// $("#spanGardens").text(data.gardens.length);
		for(var i = 0; i < data.gardens.length; i++) {
			$("#gardenDropDownItems").append('<li><a href="#">' + data.gardens[i].gardenName + '</a></li>');
		}
		$("#usersEmailAddress").text(data.email);
		// $("#spanAdmin").text(data.admin);
	});
	
});
