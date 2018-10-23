<%@ page import="java.sql.*" %>
<%@ page import="java.sql.PreparedStatement"  %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

       <style>
body
{
background-image:url("done.jpg");
background-size:cover;
background-repeat:no-repeat;
}
h1
{
font-size:100px;
font-weight:bolder;
margin-top:200px;
color:white;
text-align:center;
font-style:italic;
}
a input[type="button"]
{
width:80px;
height:40px;
color:white;
font-style:italic;
border-radius:5px;
background-color:green;
margin-top:200px;
margin-left:700px;
}
</style>
</head>
<body>
<%

int score=0;
ResultSet rs3=null;
String answer=request.getParameter("answer");
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/fish", "root", "");
Statement stmt=conn.createStatement();
	String sql="SELECT ans2 FROM level WHERE uid='"+1+"'";
	ResultSet rs=stmt.executeQuery(sql);
	
	Statement stmt1=conn.createStatement();
	while(rs.next())
	{
	if(answer.equals(rs.getString("ans2")))
	{
		out.print("<h1>Cogratulations <br> move to next hurdle</h1>");
		String sql2="SELECT score FROM score WHERE team='"+session.getAttribute("team")+"'";
		 rs3=stmt.executeQuery(sql2);
		 	
		while(rs3.next())
		{
			out.print(rs3.getInt("score"));
			score=rs3.getInt("score")+100;
			out.print(score);
			String sql1 = "update score set score='"+score+"',on2=1 where team='"+session.getAttribute("team")+"'";
			stmt1.executeUpdate(sql1);
   		}
  
	}else
	{
		String redirectURL = "http://localhost:8081/innerve/leve2final (1).html#openModal3";
		response.sendRedirect(redirectURL); 
		String sql1 = "update score set score='"+rs3.getInt("score")+"' where team='"+session.getAttribute("team")+"'";
		stmt1.executeUpdate(sql1);
	}
	}
	

		
}catch(Exception e){
	e.printStackTrace();	

}
%>
<a href="hurdle.html">
<input type="button" value="BACK">
</a>
</body>
</html>