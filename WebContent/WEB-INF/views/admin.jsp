<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel='stylesheet'	href='webjars/bootstrap/3.3.7/css/bootstrap.min.css'>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<body>
	<div class="container-fluid">
	
	<jsp:include page="../views/fragments/navbar.jsp" />
	<br><br><br>
	
	<div class="container">
	${message }
	<br><br><br>
	
	<form action="${pageContext.request.contextPath}/logout" method="post">
		<input type="submit" value ="Logout">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	</form>
	</div>
	</div>
</body>
</html>