$(document).ready(function(){
	$(".registrationForm").validate({
										rules : {
											name : {
												required : true,
												minlength : 3,
												remote : {
													url : "<spring:url value='register/available' />",
													type : "get",
													data : {
														username : function() {
															return $("#name")
																	.val();
														}
													}
												}
											},

											email : {
												required : true,
												email : true
											},

											password : {
												required : true,
												minlength : 5
											},

											password_again : {
												required : true,
												minlength : 5,
												equalTo : "#password"
											}
										},
										highlight : function(element) {
											$(element).closest('form-group')
													.removeClass('has-success')
													.addClass('has-error')
										},
										unhighlight : function(element) {
											$(element).closest('form-group')
													.removeClass('has-error')
													.addClass('has-success')
										},
										message : {
											name : {
												remote : "Username Already Exist"
											}
										}

									});
				});