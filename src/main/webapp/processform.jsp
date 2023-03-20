<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="portfilo.Insert"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String Full_name=request.getParameter("name");
String Email_id=request.getParameter("email");  
String Sub_ject=request.getParameter("subject");  
String Company=request.getParameter("com");
String Messages=request.getParameter("message");

Insert.savedata(Full_name,Email_id,Sub_ject,Company,Messages);


response.sendRedirect("index.html");


%>


</body>
</html>