<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://jakarta.apache.org/taglibs/request-1.0"
	prefix="request"%>

<!-- Static navbar -->
<nav class="navbar navbar-default navbar-static-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Dictionary</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class=""><a href="#">Home</a></li>
				<request:isUserInRole role="ROLE_ADMIN">
					<li><a href='<spring:url value="/user/user" />'>User</a></li>
				</request:isUserInRole>
				<li><a href='<spring:url value="/addword" />'>Words</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href='<spring:url value="/logout" />'>Logout</a></li>

			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</nav>

