 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   //the default...if there are npo cookie
   String favLang = "Java";
   
   //get the cookie from the browser request
   Cookie[] theCookie = request.getCookies();
   
   //find our favorite language cookie
   if(theCookie != null){
	   for(Cookie tempCookie:theCookie){
		   if("myApp.favoriteLanguage".equals(tempCookie.getName())){
		   favLang=tempCookie.getValue();
		   break;
		   }
	   }
   }
%>

	<h4>Latest Book for <%=favLang%></h4>
	<ul>
	<li>abc</li>
	<li>abc</li>
	</ul>
	
	<hr>
	<a href="cookies-personalize-form.html">Personalize this page</a>

</body>
</html>