<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="css/styles.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Existing Users</title>
<script type="text/javascript">
	function deleteUser(id)
	{
		var userId = id;
		var form = document.getElementById('myForm');
		form.action = "<spring:url value='/welcome/deleteUser/"+userId+"'/>";
		form.submit();
	}
	
	function showCreditInfo(id)
	{
		var userId = id;
		var form = document.getElementById('myForm');
		form.action = "<spring:url value='/welcome/creditCardDetails/"+userId+"'/>";
		form.submit();
	}
</script>
</head>

<body>
	<spring:url value="/welcome" var="back"></spring:url>
	<form id="myForm">
	    <table border="1">
	    	<tr>
				<td>First Name</td>
				<td>Last Name</td>
				<td>Age</td>
				<td>Show Credit Cards</td>
				<td>Delete</td>
			</tr>
		<c:forEach items="${userProfileList}" var="user">
				<tr>
					<spring:url value="/welcome/showCreditCards/${user.id}" var="url"></spring:url>
					<td><a href="${url}"/>${user.firstName}</td>
					<td>${user.lastName}</td>
					<td>${user.age}</td>
					<td><input type="button" value="ShowCreditInfo" onclick="showCreditInfo(${user.id})"></input></td>
					<td><input type="button" value="delete" onclick="deleteUser(${user.id})"></input></td>
				</tr>
		</c:forEach>
		</table>
		<input type="button" value="back" onclick="location.href='${back}'"/>
	</form>
</body>
</html>