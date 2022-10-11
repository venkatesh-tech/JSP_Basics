<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Addition of two numbers </title>
</head>
<body>
<%
	int num1= Integer.parseInt(request.getParameter("number1")); //Scriptlets can be opened anuywhere;
	int num2= Integer.parseInt(request.getParameter("number2")); // request is an implict object
%>
Sum of <%=num1 %> and <%=num2 %> is <%=num1+num2 %>

</body>
</html>