<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="css/styles.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Add Credit Cards</title>

</head>

<body>
	<h1>Add New Credit Card</h1>

<spring:url var="saveUrl" value="/welcome/addCreditCardDetail/${userProfile.id}" />
<spring:url value="/welcome/showUser" var="back"></spring:url>
<form:form modelAttribute="creditCards" method="POST" action="${saveUrl}">
	<table>
	
		<tr>
			<td>Person Name:</td>
			<td><input type="text" value="${userProfile.firstName}" disabled="true"/></td>
		</tr>
		
		<tr>
			<td>Credit Name</td>
			<td><form:input path="cardName"/></td>
		</tr>

		<tr>
			<td>Card Number:</td>
			<td><form:input path="cardNumber"/></td>
		</tr>
	</table>
	
	<input type="submit" value="Save" />
	<input type="button" value="back" onclick="location.href='${back}'"/>
</form:form>
</body>
</html>