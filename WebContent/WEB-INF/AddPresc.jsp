<%@page import="com.rcpit.ehealth.operation.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="java.sql.*" %>
 <%@ page import="com.rcpit.ehealth.connect.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>




<%
Blob image=null;
Connection con=null;
byte[ ] imgData =null;
PreparedStatement pstmt=null;
ResultSet rs=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ruralhealth","root","");
	String sql="select Image from image where pid=? and dname=?";
	pstmt=con.prepareStatement(sql);
	pstmt.setInt(1, UserInfo.getpId());
	pstmt.setString(2, UserInfo.getdName());
	 
	rs=pstmt.executeQuery();
	if(rs.next())
	{
		image=rs.getBlob(1);
		imgData=image.getBytes(1, (int)image.length());
		
	}
	else
	{
		%>	
		<body>
		<center><h1 style="margin-top:50px;color:red;font-family:verdana"><b>No Image Found</b></h1></center>
<%
		return;
	}
	
	response.setContentType("image/jpg");
		
	}
catch(Exception e)
{
	e.printStackTrace();
}

%>



</body>
</html>