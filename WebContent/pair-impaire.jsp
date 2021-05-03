<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<%for (int i=1; i<=10;i++) {
	if ((i%2)!=0){
		//System.out.println(i);

	%>
	<b>le nombre  <%= i %> est impaire </b><br>
	
	<%
	}
}%>


</body>
</html>