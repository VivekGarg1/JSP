<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
</head>
<%
		//read form data
	    String favLanguage = request.getParameter("favoriteLanguage");
	
	    //create the cooki
	    Cookie theCookie = new Cookie("myApp.favoriteLanguage",favLanguage);
	    
	    //set the life span total no of seconds 
	    theCookie.setMaxAge(60*60*24*365);
	    
	    //send the cookie to browser
	    response.addCookie(theCookie);
%>
<body>
        Thanks! we set your favorite language to: ${param.favoriteLanguage}
        <br/><br/>
        <a href="cookies-homepage.jsp">Return to homepage</a>
</body>
</html>