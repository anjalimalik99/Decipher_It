<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Congratulations</title>
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
  
<script language=JavaScript>
<!--

//Disable right mouse click Script
//By Maximus (maximus@nsimail.com) w/ mods by DynamicDrive
//For full source code, visit http://www.dynamicdrive.com

var message="Function Disabled!";

///////////////////////////////////
function clickIE4(){
if (event.button==2){
alert(message);
return false;
}
}

function clickNS4(e){
if (document.layers||document.getElementById&&!document.all){
if (e.which==2||e.which==3){
alert(message);
return false;
}
}
}

if (document.layers){
document.captureEvents(Event.MOUSEDOWN);
document.onmousedown=clickNS4;
}
else if (document.all&&!document.getElementById){
document.onmousedown=clickIE4;
}

document.oncontextmenu=new Function("alert(message);return false")

// --> 
</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Congratulations</title>
        <script>
 	function preventBack(){window.history.forward();}
 	  setTimeout("preventBack()", 0);
 	  window.onunload=function(){null};
 	</script>
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
margin-top:400px;
margin-left:700px;
}
</style>
</head>
<body>
<%

int score=0;
ResultSet rs1=null;
ResultSet r=null;
String answer=request.getParameter("answer");
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/fish", "root", "");
	Statement st=conn.createStatement();
	String sql3="SELECT on2 FROM score WHERE team='"+session.getAttribute("team")+"'";
	 r=st.executeQuery(sql3);
while(r.next())
{	if(r.getString("on2").equals("n"))
	{
Statement stmt=conn.createStatement();
	String sql="SELECT ans2 FROM level WHERE uid='1'";
	ResultSet rs=stmt.executeQuery(sql);
	Statement stmt1=conn.createStatement();
	while(rs.next())
	{
	if(answer.equals(rs.getString("ans2")))
	{
		out.print("<h1>Congratulations <br> Hurdle Crossed</h1>");
		String sql2="SELECT score FROM score WHERE team='"+session.getAttribute("team")+"'";
		 rs1=stmt.executeQuery(sql2);
		 	
		while(rs1.next())
		{
			
			score=rs1.getInt("score")+100;
			
			
			String sql1 = "update score set score='"+score+"',on2='y' where team='"+session.getAttribute("team")+"'";
			stmt1.executeUpdate(sql1);
   		}
  
	}else
	{
		String redirectURL = "http://172.16.30.197:8081/innerve/level2.jsp#openModal3";
		response.sendRedirect(redirectURL); 
	}
	}
	}else
	{
		
		String redirectURL = "http://172.16.30.197:8081/innerve/hurdle.html";
		response.sendRedirect(redirectURL);
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