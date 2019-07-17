<%@page import="fr.eni.javaee.chifoumi.bo.ActionsPossibles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
   	isErrorPage="false"
  	errorPage="jspTraitantErreur.jsp"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Jouez au chifoumi</title>
</head>
<body>
	<h1>Jouez!</h1>
	<a href="<%=request.getContextPath()%>/jouez?choix=<%=ActionsPossibles.CHI%>">
		<img width="75" src="<%=request.getContextPath()%>/images/chi.png"/>
	</a>
	<a href="<%=request.getContextPath()%>/jouez?choix=<%=ActionsPossibles.FOU%>">
		<img width="75"  src="<%=request.getContextPath()%>/images/fou.png"/>
	</a>
	<a href="<%=request.getContextPath()%>/jouez?choix=<%=ActionsPossibles.MI%>">
		<img width="75"  src="<%=request.getContextPath()%>/images/mi.png"/>
	</a>
	
	<h1>Jouez!</h1>
	<form action="<%=request.getContextPath()%>/jouez" method="post">
		<ul>
			<li>
				<label for="choix<%=ActionsPossibles.CHI%>"><img width="75"  src="<%=request.getContextPath()%>/images/chi.png"/></label>
				<input type="radio" id="choix<%=ActionsPossibles.CHI%>" name="choix" value="<%=ActionsPossibles.CHI%>"/>
			</li>
			<li>
				<label for="choix<%=ActionsPossibles.FOU%>"><img width="75"  src="<%=request.getContextPath()%>/images/fou.png"/></label>
				<input type="radio" id="choix<%=ActionsPossibles.FOU%>" name="choix" value="<%=ActionsPossibles.FOU%>"/>
			</li>
			<li>
				<label for="choix<%=ActionsPossibles.MI%>"><img width="75"  src="<%=request.getContextPath()%>/images/mi.png"/></label>
				<input type="radio" id="choix<%=ActionsPossibles.MI%>" name="choix" value="<%=ActionsPossibles.MI%>"/>
			</li>
		</ul>
		<input type="submit" value="Valider">
	</form>
</body>
</html>








