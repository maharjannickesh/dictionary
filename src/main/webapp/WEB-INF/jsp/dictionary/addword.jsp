<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="../basic/header.jsp"></jsp:include>
<jsp:include page="../basic/navbar.jsp"></jsp:include>

<div class="mainbody .col-md-2">
<form:form commandName="dictionary" action="/Dictionary/saveword" cssClass="form-horizontal addwordForm" method="GET">

	<div class="form-group">
		<label for="word" class="col-sm-2 control-label">Word:</label>
		<div class="col-sm-10">
			<form:input path="word" cssClass="form-control" />
			<form:errors path="word" />
		</div>
	</div>
	
	<div class="form-group">

		<div class="col-sm-10">
			<input type="submit" value="Find" class="btn btn-large btn-primary">
		</div>

	</div>

</form:form>
</div>
</body>
</html>