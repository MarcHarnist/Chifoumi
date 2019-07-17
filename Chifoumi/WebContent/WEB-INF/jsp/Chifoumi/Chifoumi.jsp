<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chifoumi</title>
</head>
<body style="margin:50px;">
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
	String victoireUtilisateur;
	if(request.getAttribute("resultat") != null && request.getAttribute("choix") != null && request.getAttribute("victoireUtilisateur") != null)
	{
		choix = (String)request.getAttribute("choix");
		resultat = (String)request.getAttribute("resultat");
		victoireUtilisateur = (String)request.getAttribute("victoireUtilisateur");
		if(choix != "")
		{
			%>
			Vous avez choisi: <%=choix%>
			<%
		}
		if(resultat != "")
		{
			%>
			<br><span style="color:blue;">Réponse de l'ordinateur : <%=resultat%></span>
			<%
		}
		if(victoireUtilisateur != "")
		{
			if(victoireUtilisateur.equals("true"))
			{
			%>
			<br><span style="color:green;">Vous avez gagné!</span>
			<%
			}
			else
			{
			%>
			<br><span style="color:red;">Vous avez perdu ! Il fallait choisir : <%=resultat%></span>
			<%
			}
		}
	}
	else 
	{
		%>
			Le programme est prêt mais n'a pas encore démarré.
		<%
	}
%>
</h3>

<!--  Test d'affichage d'image  -->
<p><img src="img/desert.jpg" alt="img/desert.jpg"></p>

</body>
</html>