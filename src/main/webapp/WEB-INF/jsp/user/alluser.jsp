<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="../basic/header.jsp"></jsp:include>
<jsp:include page="../basic/navbar.jsp"></jsp:include>

<div class="mainbody .col-md-2">

<table class="table table-striped">
<thead>
	<tr>
		<th>S No.</th>
		<th>Name</th>
		<th>Email</th>
		<th>Edit </th>
		<th>Delete</th>
	</tr>

</thead>
<tbody>

<c:forEach items="${ users }" var="user">
<tr>
		<td>1</td>
		<td>${user.name }</td>
		<td>${user.email }</td>
		<td>${user.id }</td>
		<td>${user.id }</td>
		
	</tr>

</c:forEach>
	
</tbody>

</table>

</div>


</body>
</html>