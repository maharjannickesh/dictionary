<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="../basic/header.jsp"></jsp:include>
<jsp:include page="../basic/navbar.jsp"></jsp:include>



<%-- <c:if test='<%= request.getParameter(\"add\") %> '>
Added
</c:if>
<c:if test='<%= request.getParameter(\"edit\") %> ' >
Edited
</c:if>
<c:if test='<%= request.getParameter(\"delete\") %> '>
Deleted
</c:if> --%>




<div class="mainbody container">
	<form:form commandName="dictionary" action="/Dictionary/word/saveword"
		cssClass="form-horizontal addwordForm" method="GET">

		<div class="form-group inline-button">
			<div class="col-md-10">
				<form:input path="word" cssClass="form-control" placeholder="Enter a Word" />
			</div>
			<div class="col-md-2">
				<input type="submit" value="Find" class="btn btn-large btn-primary form-control">
			</div>
			
		</div>
		<form:errors path="word" />


</form:form>
</div>
</body>
</html>