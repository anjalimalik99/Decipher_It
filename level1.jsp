<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>hurdle 1</title>

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
 <script>
          <% int a=0;
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/fish", "root", "");
	 ResultSet rs=null;
  if(con!=null)
      System.out.println("Data is successfully retrieved!");
  else
      System.out.println("no connection");
  String sql="select time from  Timer where team='"+session.getAttribute("team")+"'";
  // PreparedStatement ps = con.prepareStatement(sql);
     //   ps.executeUpdate();
     Statement stmt = null;
         stmt=con.createStatement();  

         rs=stmt.executeQuery(sql); 
         // In this part u extract time from database
while(rs.next()) { 
    a=rs.getInt(1);
System.out.println(rs.getInt(1)); //+"  "+rs.getString(2)+"  "+rs.getString(3));  
}
//step5 close the connection object  
con.close();
       
}catch(Exception e1)
{
    out.println(e1);
}
%>


 // here ur using the time left in the database for the user
var distance1=<%=a%>;

//distance=distance;
// Update the count down every 1 second
var x = setInterval(function() {

    // Get todays date and time
   // var now = new Date().getTime();
    
    // Find the distance between now an the count down date
   /// var distance = countDownDate - now;
    
    // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(distance1 / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance1 % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance1 % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance1 % (1000 * 60)) / 1000);
    
    // Output the result in an element with id="demo"
    document.getElementById("clock-container").innerHTML =  minutes + "m " + seconds + "s ";
    distance1=distance1-1000;
    // If the count down is over, write some text 
     if(distance1<=0)
    	{
    	setTimeout(function () {
    	    window.location.href = "over.html"; //will redirect to your blog page (an ex: blog.html)
    	 },0); //will call the function after 2 secs.

    	}
    if (distance1 %10000 ===0) {
       var x1 = updateTime(function() {

           <% ResultSet rs=null;
           int a1=0;
try {
//	Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fish","root","");
  if(con!=null)
      System.out.println("Data is successfully updated!");
  else
      System.out.println("no connection");
   String sql1="select time from  Timer where team='"+session.getAttribute("team")+"'";
  // PreparedStatement ps = con.prepareStatement(sql);
     //   ps.executeUpdate();
     Statement stmt1 = null;
         stmt1=con.createStatement();  

         rs=stmt1.executeQuery(sql1); 
         
while(rs.next()) { 
    a1=rs.getInt(1);
    System.out.println(rs.getInt(1));
//System.out.println(rs.getInt(1)); //+"  "+rs.getString(2)+"  "+rs.getString(3));  
}


  String sql="Update Timer set time=? where team='"+session.getAttribute("team")+"'";  // Here u could set for which team time update krna hai like where teamname=...
  // here i have done subtraction not exact values. You guys would have exact values because of sessions
  // as i have not created sessions
  a1=a1-10000;
   PreparedStatement ps = con.prepareStatement(sql);
   ps.setInt(1, a1);
        ps.executeUpdate();
            

//step5 close the connection object  
con.close();
       
}catch(Exception e1)
{
    out.println(e1);
}
%>
    
    });   }
}, 1000);



</script>
 	<script>
 	function preventBack(){window.history.forward();}
 	  setTimeout("preventBack()", 0);
 	  window.onunload=function(){null};
 	</script>
 <style>
 body{
	     background-repeat:no-repeat;
		 background-image:url(tenor.gif);
		 background-size:cover;
		 margin:auto;
		}
 .modalDialog {
        position: fixed;
        font-family: Arial, Helvetica, sans-serif;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        background: rgba(0,0,0,0.8);
        z-index: 99999;
        opacity:0;
        -webkit-transition: opacity 400ms ease-in;
        -moz-transition: opacity 400ms ease-in;
        transition: opacity 400ms ease-in;
        pointer-events: none;
    }

    .modalDialog:target {
        opacity:1;
        pointer-events: auto;
    }

    .modalDialog > div {
        width: 400px;
        position: relative;
        margin: 10% auto;
        padding: 5px 20px 13px 20px;
        border-radius: 10px;
        background: #fff;
        background: -moz-linear-gradient(#fff, #999);
        background: -webkit-linear-gradient(#fff, #999);
        background: -o-linear-gradient(#fff, #999);
       
    }
.modalDialog1 {
        position: fixed;
        font-family: Arial, Helvetica, sans-serif;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        background: rgba(0,0,0,0.8);
        z-index: 99999;
        opacity:0;
        -webkit-transition: opacity 400ms ease-in;
        -moz-transition: opacity 400ms ease-in;
        transition: opacity 400ms ease-in;
        pointer-events: none;
    }

    .modalDialog1:target {
        opacity:1;
        pointer-events: auto;
    }

    .modalDialog1 > div {
        width: 1300px;
        position: relative;
        margin: 1% auto;
        padding: 5px 20px 13px 20px;
        border-radius: 10px;
        background: #fff;
        background: -moz-linear-gradient(#fff, #999);
        background: -webkit-linear-gradient(#fff, #999);
        background: -o-linear-gradient(#fff, #999);
       
    }
    .close {
        background: #606061;
        color: #FFFFFF;
        line-height: 25px;
        position: absolute;
        right: -12px;
        text-align: center;
        top: -10px;
        width: 24px;
        text-decoration: none;
        font-weight: bold;
        -webkit-border-radius: 12px;
        -moz-border-radius: 12px;
        border-radius: 12px;
        -moz-box-shadow: 1px 1px 3px #000;
        -webkit-box-shadow: 1px 1px 3px #000;
        box-shadow: 1px 1px 3px #000;
    }

    .close:hover { background: #00d9ff; }
	.button {
  padding: 15px 15px;
  font-size: 20px;
  text-align: center;
  cursor: pointer;
  margin : auto ;
  
  
  display : block ;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
	  
	#a1 {
	     margin-top:20px ;
         margin-left:70px;		 
		 height:25px ; 
		 width:50px; 
		 position:absolute;
		 text-align:center;
		 }
	#a2 {
	     margin-top:90px;
		 margin-left:50px;
		 
		 height:25px; 
		 width:150px;
		 position:absolute;
		 text-align:center;
		 }
	             
	#a3 {
	     margin-top:160px;
		 margin-left:70px;
		
		 height:25px; 
		 width:150px;
		 position:absolute;
		 text-align:center;
	     
	}
	#a4 {
	    margin-top:350px;
		margin-left:1200px;
		height:25px;
		width:150px;
		
		position:absolute;
		text-align:center;
	}
	
	#a5 {
	   	
		height:25px;
		width:150px;
		position:absolute;
		text-align:center;
		margin-top:450px;
		margin-left:1200px;
	}
	th
	{
	color:#ffb600;
	font-size:20px;
	text-align:left;
	border:2px solid white;
	
	font-weight:bolder;
	}
	
	canvas {
  display: block;
  width: 40%;
  height: 40%;
  margin-left:1000px;
 
}
td
{
color:white;
font-size:15px;
border:2px solid white;
	
font-weight:bold;

}
	
	</style>
	 </head>
 <body>
 
<div id="a1" style="background-image:dancing-octopus-winner-UPY.jpg" ><a href="#openModal1" style="color:white"><button class = "button" style="margin-top:50px">INSTRUCTION</button></a></div>

<div id="openModal1" class="modalDialog">
<div >
    <a href="#close" title="Close" class="close">X</a>
    <h2>Instructions</h2>
    <p style="font-size:20px ; text-align:left;color:black">1.This game is for 1 hour</p>
   				<p style="font-size:20px; text-align:left;color:black">2.There are three levels in this game.</p>
					<p style="font-size:20px; text-align:left;color:black">3.The Organising Committee's decision would be final and binding</p>
					<p style="font-size:20px; text-align:left;color:black">4.The team with the maximum score and minimum time shall be declared winner</p>
					<p style="font-size:20px; text-align:left;color:black">5.Editor has been provided for your aid.</p>
					<p style="font-size:20px; text-align:left;color:black">6.Time would be deducted on refreshing the page</p>
					<p style="font-size:20px; text-align:left;color:black">7.Do not refresh the page</p>
					
	  
    
</div>
</div>
<div id="a2" ><a href="#openModal2" style="color:white"><button class = "button" style="margin-top:50px;margin-left:20px">QUESTION</button></a></div>

  <div id="openModal2" class="modalDialog1" >
<div >
    <a href="#close" title="Close" class="close">X</a>
    <h2>QUESTION</h2>
    <p>One day, Doris, the Siraan fish, army head of Syrenix sea was relaxing in his cabin, when he suddenly see an alert on his computer screen. Sea base was attacked by a malign Octupus, named Mr Coral Octopus. The computer has just intercepted hundreds of coded messages from Mr Coral! Help Doris decode the message!</p>

<p>Challenge<br>
You will be given a list of strings, separated by commas. Each string will contain either:
Part of the coded message
It is part of the coded message if it is not in the form a=b. Note that it is part of the message if it is ab=c. Add this string to the coded message.</p>

<p>Part of the encoding scheme<br>
This will be in the form of a=b. Note that it could be a==, meaning that all ‘a’s must be replaced with ‘='s.
Your program must then output the message, decoded using the scheme found.</p>

<p>Other info: Your input will only contain commas for separating the strings. It could contain other characters, like ! ,1 ,# etc.
Bits of decoding info do not decode each other. Only the message is affected by the decoding information. Only one replacement will be given for each character, e.g. no "io,"i=u","i=g"</p>
<p>Examples<br>

Input:"p","a","a=e","p=116",”st”<br>
Output:test<br>

Now decode this given string </p>







<p> INPUT :<br>

“$=”  ,  “IuA” , “Ind = 35” , “! = 38” ,  “c=” , “v=!v” ,“ir = 73”  , "m" , “ ~” , “Com=46”, “nd = 37” , “ "i"\”  “~ C”, “="e" “ , “ ~” , “ \O”   “F/f = 120” , “or = 62” , "u" , “van =65” , “a =118” ,    “ pur =33” , “e= 122” ,   “c=z”, “T = 36”  , “b~ “ , “ "A" I~“ , “ ."m”" , “ce = 60” ,  “  = 126 “ ,  “v% ~” , “o = 79” , “s = 92”,           “ =zv” , “rn =98” , “qu =63” ,   “"d"?” , “v"r"c” , “z"r"\” , “~Ox” ,   “ ~” ,  “ #"I"” , “v” , “"n" ~” ,   “"A"” , “I~x” ,  “>< ” , “~&”</p>



</div>
</div>

<div id="a3"><a href="#openModal3" style="color:white"><button class = "button" style="margin-top:50px">SUBMIT ANSWER</button></a></div>
<div id="openModal3" class="modalDialog">
<div>
     <a href="#close" title="Close" class="close">X</a>
	 <h3>Enter your answer:</h3>
	 <br/>
	 <form action="try.jsp" method="post">
	 <textarea name="answer"></textarea><br/>
	 <input type="submit" style="text-align:center; widh:60px; height:40px " value="SUBMIT">

	 </form>
	 
	 
</div>
</div>

<div id="a4"><a href="hurdle.html" style="color:white"><button class = "button" >HOME</button></a></div>

<div id="a5"><a href="editor.html" target="_blank" style="color:white"><button class = "button">OPEN EDITOR</button></a></div>

      <h1 id="demo" ></h1>
     

<table style="border:5px solid white;border-collapse:collapse; width:20%;margin-left:1050px">
   <tr>
     <th>Team Name</th>
     <th>Score </th>
     </tr>
     <tr>
     <td>
     <%= session.getAttribute("team") %>
     </td>
     <td>
     <%
       int score=0;
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/fish", "root", "");
	Statement stmt4=con.createStatement();
	String sql4="select score from score where team='"+session.getAttribute("team")+"'";
	ResultSet rs3=stmt4.executeQuery(sql4);
	while(rs3.next())
	{
	 score=rs3.getInt("score");
	}
}catch(Exception e)
{
e.printStackTrace();	
}
	%>
 <%=score %>
     </td>
     </tr>
   </table>
   <h1 style="color:yellow;font-style:italic;text-decoration:underline;margin-left:1050px;text-shadow:4px 4px 4px red">TIME LEFT:</h1>
        <div id="clock-container" style="font-size:40px;
color:white;
text-shadow:4px 4px 4px blue;
width:400px; height:100px;
margin-top:10px;
margin-left:1050px;
position:fixed;">00:00</div>
   
</body>

</html>