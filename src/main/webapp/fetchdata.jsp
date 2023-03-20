<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="portfilo.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



</head>
<body>
  
  
  

<table border='2'>
<tr>
<th width='200px'>Full_name</th>
<th width='200px'>Email_id</th>
<th width='200px'>Subject</th>
<th width='200px'>Company_name</th>
<th width='500px'>Messages</th>
</tr>
<%

ResultSet rs=Insert.getdata();

while(rs.next())
{
	
out.println("<tr>");

out.println("<td>");
out.println(rs.getString(1));
out.println("</td>");

out.println("<td>");
out.println(rs.getString(2));
out.println("</td>");

out.println("<td>");
out.println(rs.getString(3));
out.println("</td>");

out.println("<td>");
out.println(rs.getString(4));
out.println("</td>");

out.println("<td>");
out.println(rs.getString(5));
out.println("</td>");


 out.println("<td>");
 out.println("<a href='Update.jsp'>Update</a>");
 out.println("</td>");

out.println("<td>");
out.println("<a href='DeleterData.jsp'>Delete</a>");
out.println("</td>");



out.println("</tr>");

 }

  
 

%>
</table>

</body>
</html>