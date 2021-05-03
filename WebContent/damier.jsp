<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<table border="2" size="50%">
<%
String color="";
for(int i=1;i<=10;i++ )	{  
	   %>
	   <tr>
	   <%if ((i%2)==0) color="#000000";
	   else color="#ffffff";%>
	   <%for(int j=1; j<=10;j++){ %>
	   <td  bgcolor="<%= color %>" width="20px" height="20px"></td>
	   <%if (color.equals("#000000")){
		   color="#ffffff";}
		   else {color="#000000";}%>
	   
	   <%} %></tr><%} %>
	  
	   </table>
	   

</body>
</html>