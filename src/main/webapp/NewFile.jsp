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

String name=request.getParameter("username");
String pass=request.getParameter("password");

if(name.equals("yash") && pass.equals("12345")){
	

   response.sendRedirect("fetchdata.jsp");

}
else{
	response.sendRedirect("Login.jsp");
}


%>

</body>
</html>