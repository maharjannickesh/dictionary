<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="../basic/header.jsp"></jsp:include>
<jsp:include page="../basic/navbar.jsp"></jsp:include>

<div>

<form:form commandName="user" cssClass="form-horizontal registrationForm">

<div class="form-group">
		<label for="name" class="col-sm-2 control-label">Name:</label>
		<div class="col-sm-10">
			<form:input path="name" cssClass="form-control" />
			<form:errors path="name" />
		</div>
	</div>

	<div class="form-group">
		<label for="email" class="col-sm-2 control-label">Email:</label>
		<div class="col-sm-10">
			<form:input path="email" cssClass="form-control" />
			<form:errors path="email" />
		</div>
	</div>

	<div class="form-group">
		<label for="password" class="col-sm-2 control-label">Password:</label>
		<div class="col-sm-10">
			<form:input path="password" cssClass="form-control" />

			<form:errors path="password" />
		</div>
	</div>

	<div class="form-group">
		<label for="password" class="col-sm-2 control-label">Confirm Password
			:</label>
		<div class="col-sm-10">
			<input type="password" id="password_again" class="form form-control"
				name="password-again">
		</div>
	</div>

	<div class="form-group">

		<div class="col-sm-10">
			<input type="submit" value="Save" class="btn btn-large btn-primary">
		</div>

	</div>



</form:form>

</div>

</body>
</html>