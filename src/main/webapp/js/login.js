$(function() {

	$("#login-form").validate({
		errorClass: 'field-validation-error',
		rules: {
			"email": {
				required: true,
			},
			"password": {
				required: true,
			},
		},
		messages: {
			"email": {
				required: "*",
			},
			"password": {
				required: "*",
			},
		},
	});

	$("#register-form").validate({
		errorClass: 'field-validation-error',
		rules: {
			"email": {
				required: true,
				email: true,
			},
			"password": {
				required: true,
				minlength: 6,
			},
			"confirm-password": {
				required: true,
				equalTo: "#Password",
			},
		},
		messages: {
			"email": {
				required: "*",
				email: "Please enter a valid email address",
			},
			"password": {
				required: "*",
				minlength: "Password must be 6 or more characters",
			},
			"confirm-password": {
				required: "*",
				equalTo: "Password does not match",
			},
		},

	});

});