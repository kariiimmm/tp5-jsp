<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Erreur </title>
</head>
<body>
<%String o1 = request.getParameter("o1");
String o2= request.getParameter("o2");
String op= request.getParameter("k");
if (o1.equals("") && o2.equals("") && op.equals("")){


%>
<strong>Remplir les données </strong>
<%}else if(o1.equals("") && o2.equals("") ){ %>
<strong>Saissie les deux operandes 1 et 2</strong>
<%}else if (o1.equals("")){ %>
<strong>Saissie l'operande numéro 1</strong>
<%}else if (o2.equals("")) {%>
<strong>Saissie l'operande numéro 2</strong>
<%} else if (op.equals(null)){%>
<strong>Choisir l'operation </strong>
<%} else if(op.equals("div")&& o2.equals("0")){%>
<strong>Impossible de devise par 0</strong>
<%} %>
</body>
</html>