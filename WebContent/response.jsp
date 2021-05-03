<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultat </title>
</head>
<body>
<%int num1=Integer.parseInt(request.getParameter("o1")); 
int num2=Integer.parseInt(request.getParameter("o2"));
String op= request.getParameter("k");

int  res=0;
 if(op.equals("add")){res=num1+num2 ;%>
 <strong>Le resultat est <%=res  %></strong>
 <% } else if (op.equals("sous")) {res=num1-num2;%>
 <strong>Le resultat est <%=res  %></strong>
<% } else if (op.equals("mult")) {res=num1*num2;%>
<strong>Le resultat est <%=res  %></strong>
 <% } else if (op.equals("div")&&(num2!=0)){res=num1/num2;%>
 <strong>Le resultat est <%=res  %></strong>
<%} else if (op.equals("div") && num2==0 )  {response.sendRedirect("erreur.jsp"); }%>

</body>
</html>