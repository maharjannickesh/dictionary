<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="../basic/header.jsp"></jsp:include>


<div id="main">
	<div>
		<h1>
			<i class="glyphicon glyphicon-search"> </i> Urban Dictionary
		</h1>
	</div>
	<div class="Search">

		<form:form commandName="dictionary" method="GET"
			action="search">

			<div class="form-group col-md-12 row inline-button">
				<div class="col-md-10">
					<form:input path="word" cssClass="form form-control " />
				</div>
				<div class="col-md-2">
				<input type="submit" value="Search"
					class="btn btn-large btn-primary form-control">
					</div>
			</div>
		</form:form>
	</div>
</div>
<!-- /.row -->

<div id="result"></div>
</div>


</body>
</html>