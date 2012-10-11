<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="css/styles.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Existing Users</title>
</head>
<body>
	<form>
		<spring:url value="/welcome/showUser" var="back"></spring:url>
	    <table border="1">
	    	<tr>
				<td>First Name</td>
				<td>Credit Name</td>
				<td>Credit Card Number</td>
			</tr>
			<c:forEach items="${userProf.creditCards}" var="userCreditCards">
					<tr>
						<td>${userCardsList.firstName}</td>
						<td>${userCreditCards.cardName}</td>
						<td>${userCreditCards.cardNumber}</td>
					</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>