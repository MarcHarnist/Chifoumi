<%@page import="fr.eni.javaee.chifoumi.bo.ActionsPossibles"%>
<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
       	isErrorPage="false"
  	errorPage="jspTraitantErreur.jsp"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Résultat</title>
</head>
<body>
	<%
		int choixJoueur = (int)request.getAttribute("choixJoueur");
		int choixServeur = (int)request.getAttribute("choixServeur");
		int resultat = (int)request.getAttribute("resultat");
		String nul = null;
		
	%>
	<%=nul.length() %>
	<h1>Résultat</h1>
	
	<h4>Choix du joueur</h4>
	<%=request.getAttribute("choixJoueur") %>
	<%
		if(choixJoueur==ActionsPossibles.CHI)
		{
	%>
			<img width="75"  src="<%=request.getContextPath()%>/images/chi.png"/>
	<% 		
		}
		else if(choixJoueur==ActionsPossibles.FOU)
		{
	%>
			<img width="75"  src="<%=request.getContextPath()%>/images/fou.png"/>
	<% 					
		}
		else if(choixJoueur==ActionsPossibles.MI)
		{
	%>
			<img width="75"  src="<%=request.getContextPath()%>/images/mi.png"/>
	<% 					
			
		}
		else
		{
			out.print("Je ne comprends pas votre choix.");
		}
	%>
	
	<h4>Choix du serveur</h4>
	<%=request.getAttribute("choixServeur") %>
	<%
		if(choixServeur==ActionsPossibles.CHI)
		{
	%>
			<img width="75"  src="<%=request.getContextPath()%>/images/chi.png"/>
	<% 		
		}
		else if(choixServeur==ActionsPossibles.FOU)
		{
	%>
			<img width="75"  src="<%=request.getContextPath()%>/images/fou.png"/>
	<% 					
		}
		else if(choixServeur==ActionsPossibles.MI)
		{
	%>
			<img width="75"  src="<%=request.getContextPath()%>/images/mi.png"/>
	<% 					
			
		}
		else
		{
			out.print("Je ne comprends pas votre choix.");
		}
	%>
	<h4>Résultat</h4>
	<%=request.getAttribute("resultat") %>
	<%
		if(resultat==0)
		{
			out.write("Egalité!");
		}
		else if(resultat==1)
		{
			out.write("Vous avez gagné!!");
		}
		else
		{
			out.write("Vous avez perdu!");
		}
	%>
	<div>
		<a href="<%=request.getContextPath() %>/jouez">Rejouer</a>
	</div>
</body>
</html>



















