<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="../basic/header.jsp"></jsp:include>

<div class="container">
	<div class="main">

		<div>
			<h1>
				<i class="glyphicon glyphicon-search"> </i> Urban Dictionary
			</h1>
		</div>
		<div class="Search">
			<form:form commandName="dictionary" method="GET"
				action='search'>
				<div class="col-md-12 form-group inline-button">
					<div class="col-md-10">
						<form:input path="word" cssClass="form form-control" />
					</div>
					<div class="col-md-2">
						<input type="submit" value="Search"
							class="form-control btn btn-large btn-primary">
					</div>
				</div>

			</form:form>
		</div>
		<!-- /input-group -->
	</div>

	<h1>
		<%=request.getParameter("word")%>
	</h1>
	<c:forEach items="${word}" var="words">
		<strong>${words.word }</strong>
		<br>
		<p>
			(<em>${words.wordtype }</em> ) : ${words.definition }
		</p>

	</c:forEach>
</div>
</body>
</html>