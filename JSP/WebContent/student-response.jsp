<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Confirmation</title>
</head>
<body>
The student is confirmed: ${param.firstName} ${param.lastName}
<br><br>
The student's country: ${param.country}
<br><br>
Student's favorite programming language: ${param.favoriteLanguage}
<br><br>
Student's hobbies:
<ul>
   <%
      String[] hobbies=request.getParameterValues("hobbies");
      for(String hobby: hobbies){
	   out.println("<li>"+hobby+"</li>");
   }
   %>
</ul>
</body>
</html>