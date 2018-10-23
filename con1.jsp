<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registered</title>
<script>
 	function preventBack(){window.history.forward();}
 	  setTimeout("preventBack()", 0);
 	  window.onunload=function(){null};
 	</script>
 	<script language=JavaScript>
function ieClicked() {
    if (document.all) {
        return false;
    }
}
function firefoxClicked(e) {
    if(document.layers||(document.getElementById&&!document.all)) {
        if (e.which==2||e.which==3) {
            return false;
        }
    }
}
if (document.layers){
    document.captureEvents(Event.MOUSEDOWN);
    document.onmousedown=firefoxClicked;
}else{
    document.onmouseup=firefoxClicked;
    document.oncontextmenu=ieClicked;
}
document.oncontextmenu=new Function("return false")
function disableselect(e){
    return false
    }
    function reEnable(){
    return true
    }
    document.onselectstart=new Function ("return false")
    if (window.sidebar){
    document.onmousedown=disableselect
    document.onclick=reEnable
    }
</script>
  
<style>
body
{
background-image:url("welcome2.jpg");
background-size:1366px 768px;
background-repeat:no-repeat;
}
.final
{
text-align:center;
font-size:70px;
font-weight:bold;
font-style:italic;
margin-top:100px;
color:black;
}
a input[type="submit"]
{
background-color:sky blue;
height:50px;
width:150px;
border:solid;
border-radius:20px;

margin-left:530px;
}

.plot {
   height:200px;
   width:1000px;
   margin-left:200px;
   margin-top:40px;
   border:8px solid grey;
   padding:5px 5px 5px 5px;
}
</style>
</head>
<body>
<% 

String name1=request.getParameter("name1");
String name2=request.getParameter("name2");
String team=request.getParameter("team_name");
session.setAttribute("team",team);
String clg=request.getParameter("clg");
String cntct=request.getParameter("cntct");

String email=request.getParameter("email");


try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/fish", "root", "");
	Statement stmt=conn.createStatement();
	if(name1!=null && name2!=null && team!=null && clg!=null && cntct!=null)
	{
		String sql = "insert into register(n1,n2,team,email,clg,cntct)values('"+name1+"','"+name2+"','"+team+"','"+email+"','"+clg+"','"+cntct+"')";
		stmt.executeUpdate(sql);	
		Statement stmt1=conn.createStatement();
		String sql1="insert into score(team) values ('"+team+"')";
		stmt1.executeUpdate(sql1);
		Statement stmt2=conn.createStatement();
		String sql2="insert into timer(team) values ('"+team+"')";
		stmt2.executeUpdate(sql2);
	    
	    	 System.out.println("SUCCESFULL");
	}else
	{
		String redirectURL = "http://172.16.30.197:8081/innerve/register.html";
		response.sendRedirect(redirectURL);
	 }	
}catch(Exception e){
	e.printStackTrace();	

}
%>
<div class="final" style="color:white"> REGISTERED SUCCESSFULLY </div>

<div class="plot" style=" background: #fff; opacity:0.8"> <p style="font-size:25px ;font-family:Times new roman; color:black; padding:2px 2px 2px 2px"> You are Doris, a discus fish. You are the Chief of your marine village. Due to harsh increase in temperature, the 
water has been drying up. The only solution is to procure water by swimming to the tributary. You have the responsibility of acquiring freshwater for your village. Ahead of you lies
three hurdles, each harder than previous. You will need to decrypt your way through them. </p></div>
<a href="Cover12.html">
<input type="submit" value="Let Us Start..." style="margin-top:80px ;margin-left:600px">
</a>

</body>
</html>