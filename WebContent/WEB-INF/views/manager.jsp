<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel='stylesheet'	href='webjars/bootstrap/3.3.7/css/bootstrap.min.css'>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manager</title>
</head>
<body>
	
	
	<jsp:include page="../views/fragments/navbar.jsp" /> 
	<div class="container">
	<br><br><br>
	${message }
	<br><br><br>
	
	<form action="<%=request.getContextPath()%>/logout" method="post">
		<input type="submit" value ="Logout">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	</form>
	
	</div>
</body>
</html>