<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<jsp:include page="../basic/header.jsp"></jsp:include>
<jsp:include page="../basic/navbar.jsp"></jsp:include>

<div class="mainbody container">
 <a href='<spring:url value="/user/adduser"></spring:url>' class="userBtn"><button class="btn btn-primary btn-default">Add New User<i class="glyphicon glyphicon-user"></i></button></a> <br> <br>
 
<table class="table table-striped table-bordered">
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
		<td><a href='<spring:url value="/user/edit/${user.id }" />'> <i class="glyphicon glyphicon-pencil"></i></a></td>
		<td><a  class="deleteBtn" href='<spring:url value="/user/delete/${user.id }" />' > <i class="glyphicon glyphicon-trash"></i></a>  </td>
		
	</tr>

</c:forEach>
	
</tbody>

</table>

</div>


</body>
</html>