<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chifoumi</title>
</head>
<body style="margin:200px;">
<h1>Chifoumi - Tp JavaEE</h1>
<h2>Eni - Niort</h2>
<h3>17/07/2019</h3>
<p>Jouez avec moi à Chifoumi!</p>
<form action="/Chifoumi/Chifoumi" method="post">
	<p><input type="submit" name="choix" value="Chi"> <input type="submit" name="choix"  value="Fou"> <input type="submit" name="choix" value="Mi"></p>
</form>
<h3>
<%
	String choix;
	String resultat;
	if(request.getAttribute("resultat") != null && request.getAttribute("choix") != null)
	{
		choix = (String)request.getAttribute("choix");
		resultat = (String)request.getAttribute("resultat");
		if(choix != "")
		{
			%>
			<span style="color:green; font-weight:bold;">Vous avez choisi: <%=choix%></span>
			<%
		}
		
		if(resultat != "")
		{
			%>
			<br><span style="color:blue; font-weight:bold; font-size:30px;">Il fallait choisir : <%=resultat%></span>
			<%
		}
		
	}
	else 
	{
		%>
			<span style="color:red; font-weight:bold;">Le programme est à l'arrêt.</span>
		
		<%
	}
	
	
%>
</h3>
</body>
</html>