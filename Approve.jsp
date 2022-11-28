<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "java.sql.Connection"%> 
    <%@page import="com.connection.dbconnection" %>
    <%@page import="java.sql.PreparedStatement"%>
    <%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
int id = Integer.parseInt(request.getParameter("id"));
try
{
	Connection con = dbconnection.connect();
	PreparedStatement ps1 = con.prepareStatement("update cngpump set status = ? where id = ?");
	ps1.setString(1, "Approved");
	ps1.setInt(2, id);
	int res = ps1.executeUpdate();
	if(res>0)
	{
		response.sendRedirect("VApprove.jsp");
		
	}
	else
	{
		response.sendRedirect("404.html");
	}
}
catch(Exception e)
{
	e.printStackTrace()	;
}
%>
</body>
</html>