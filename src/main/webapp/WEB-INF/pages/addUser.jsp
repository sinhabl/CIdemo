<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="css/styles.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Add User</title>

</head>

<body>
	<spring:url value="/welcome" var="back"></spring:url>
	<form:form modelAttribute="userProfile" action="/SpringMVC/welcome/add"
		method="POST">
		<table>
			<tr>
				<td><label>First Name</label></td>
				<td> <form:input path="firstName" /></td>
			</tr>
			<tr>
				<td><label>Last Name</label></td>
				<td><form:input path="lastName" /></td>
			</tr>
			<tr>
				<td><label>Age</label></td>
				<td><form:input path="age"/></td>
			</tr>
		</table>
		<input type="submit" value="Submit"></input>
		<input type="button" value="back" onclick="location.href='${back}'"/>
	</form:form>
</body>
</html>