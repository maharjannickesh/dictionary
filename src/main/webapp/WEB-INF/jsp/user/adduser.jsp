<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<jsp:include page="../basic/header.jsp"></jsp:include>
<jsp:include page="../basic/navbar.jsp"></jsp:include>

<div>
<div class="container">
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
	<c:if test="${empty user}"> 
	<div class="form-group">
		<label for="password" class="col-sm-2 control-label">Password:</label>
		<div class="col-sm-10">
			<form:password path="password" cssClass="form-control" />

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
	 </c:if>
	<div class="form-group">
		<div class="col-md-2"></div>
		<div class="col-sm-10">
			<input type="submit" value="Save" class="btn btn-large btn-primary">
		</div>

	</div>



</form:form>
</div>
</div>

</body>
</html>