<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="context" scope="request" value="<%= request.getContextPath()%>" />
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Home page
</h1>
<a href="./customerDataForm">Add Customers</a><br>
<a href="./customerSearch4Update">Search And Edit customer</a><br>
<a href="./customerSearch4Delete">Search And Delete customer</a><br>
<a href="./mvcAllcustomer">List customers</a>
</body>
</html>
