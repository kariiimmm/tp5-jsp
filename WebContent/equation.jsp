<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<%  float a = Float.parseFloat(request.getParameter("a")) ;
float b= Float.parseFloat(request.getParameter("b"));
float c = Float.parseFloat(request.getParameter("c"));
float d = (b*b)-4*a*c;
float x , x1 ,x2; 
if (d>0){%>

<body bgcolor="red">

<b>Pas de solution dans R</b>

<%} else if (d==0) {%>

<body>
<b>Une solution unique X= <%=  -b/2*a  %></b>
<%
}
else {
	%>
	<body bgcolor="green">
	<b>Deux solutions </b>
	<ul>
	<li>X1 = <%= -b-Math.sqrt(d)/(2*a) %></li>
	<li>X2 = <%= -b+Math.sqrt(d)/(2*a) %></li>
	</ul>
	<% } %>


</body>
</html>