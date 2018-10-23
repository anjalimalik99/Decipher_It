<%-- 
    Document   : inn
    Created on : Apr 27, 2018, 6:55:13 PM
    Author     : My Hp
--%>
<%@ page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String name= request.getParameter("name");
    String Course=request.getParameter("course");
        String Branch=request.getParameter("Branch");
    String Year=request.getParameter("year");
    String College=request.getParameter("college");
    String Contact=request.getParameter("contact");
    String email=request.getParameter("email");
    String pas=request.getParameter("pas");
        String cpas=request.getParameter("cpas");
try{
    Class.ForName("com.mysql.jdbc.Driver")
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/inn","root","");
     Statement stmt = con.createStatement;
     if(!(pas).equals(cpas))
     {
         System.out.println("Password Mismatch");
     }
     String sql="insert into associate(name,course,branch,year,clg,cntct,email,pas,cpas) values ('"+name+"','"+Course+"','"+Branch+"','"+Year+"','"+College+"','"+Contact+"','"+email+"','"+pas+"','"+cpas+"')";
     
     stmt.executeUpdate(sql);
     String sql1="select * from associate";
     Statemeent stmt1=con.createStatement;
     ResultSet rs=stmt.executeQuery(sql1);
     while(rs.next())
     {
         System.out.println(rs.getString("name"));
         System.out.println(rs.getString("course"));
         System.out.println(rs.getString("branch"));
         System.out.println(rs.getString("year"));
         System.out.println(rs.getString("clg"));
         System.out.println(rs.getString("cntct"));
         System.out.println(rs.getString("email"));
         System.out.println(rs.getString("pas"));
         System.out.println(rs.getString("cpas"));
     }
     }catch(Exception e)
     {
     e.printStackTrace();
     }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
