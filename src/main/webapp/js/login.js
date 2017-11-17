$(function() {

	//oneUppercase - method to require uppercase letter in password
	$.validator.addMethod("oneUppercase", function(value) {
		return value.match(/[A-Z]/);
	});

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
	});

	$("#register-form").validate({
		errorClass: 'field-validation-error',
		rules: {
			"register-email": {
				required: true,
				email: true,
			},
			"register-password": {
				required: true,
				minlength: 6,
				oneUppercase: true,
			},
			"confirm-password": {
				equalTo: "#register-password",
			},
		},
		messages: {
			"register-email": {
				email: "Please enter a valid email address",
			},
			"register-password": {
				minlength: "Password must be 6 or more characters",
				oneUppercase: "Password must contain at least one uppercase letter",
			},
			"confirm-password": {
				equalTo: "Password does not match",
			},
		},

	});

});






