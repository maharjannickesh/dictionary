<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="../basic/header.jsp"></jsp:include>
<jsp:include page="../basic/navbar.jsp"></jsp:include>

<div class="mainbody container">



	<form:form commandName="dictionary"
		cssClass="form-horizontal addwordForm col-md-9"
		action="/Dictionary/word/saveeditword/${dictionary.id }">

		<div class="form-group">
			<label for="word" class="col-sm-2 control-label">Word:</label>
			<div class="col-sm-10">
				<form:input path="word" cssClass="form-control" />
				<form:errors path="word" />
			</div>
		</div>

		<div class="form-group">
			<label for="wordtype" class="col-sm-2 control-label">Word
				Type:</label>
			<div class="col-sm-10">
				<form:input path="wordtype" cssClass="form-control" />
				<form:errors path="wordtype" />
			</div>
		</div>

		<div class="form-group">
			<label for="definition" class="col-sm-2 control-label">Definition:</label>
			<div class="col-sm-10">
				<form:textarea path="definition" cssClass="form-control" />
				<form:errors path="definition" />
			</div>
		</div>

		<div class="form-group">
			<div class="col-sm-2"></div>
			<div class="col-sm-10">
				<input type="submit" value="Save" class="btn btn-large btn-primary">
			</div>

		</div>

	</form:form>

</div>
</body>
</html>