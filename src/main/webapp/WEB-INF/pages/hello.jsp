<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="css/styles.css"></link>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Existing Users</title>

</head>

<body>
<h1>Existing Events</h1>
<table>
	<tr>
		<td colspan="2">
			<spring:url var="url" value="/welcome/showUser" />
			<a href="${url}">Show User</a>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<spring:url var="addurl" value="/welcome/addUser"/>
			<a href="${addurl}">Add User</a>
		</td>
	</tr>
</table>
</body>
</html>