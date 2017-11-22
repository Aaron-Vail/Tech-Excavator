$(function() {

		// $("select").on("change", function() {
		// 	alert("welcome");
		// 	GARDEN.selectedGarden = $("#gardenDropDownItems option:selected").index() - 1;
		// 	alert(GARDEN.selectedGarden);
		// 	$.ajax({
		// 		url: GARDEN.root + "getGarden",
		// 		type: "GET",
		// 		data: {
		// 			gardenId: GARDEN.selectedGarden.gardenId
		// 		},
		// 		dataType: "json",
		// 	}).done(function(data) {
		// 		alert("You've made it this far");
		// 	});
		// });

	//Logout
	document.getElementById ("logoutButton").addEventListener ("click", function(){
		$.ajax({
			url: GARDEN.root + "user/logout",
			type: "POST"
		}).done(function(data) {
			window.location.href = "../html/login.html";
		});
	});

	//Makes it so button doesn't remain grey after you click on it
	$(".btn").mouseup(function(){
	    $(this).blur();
	})

});
