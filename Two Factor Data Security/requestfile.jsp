<%@ page  import="java.sql.*,databaseconnection.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Two-Factor Data Security Protection Mechanism for Cloud
	Storage System</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-georgia.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<%
	Integer ap=(Integer)session.getAttribute("idu");
System.out.println("ap issssssssssssssssssss"+ap);
	String b=(String)session.getAttribute("unamep");
	//session.setAttribute("owner_name",b);
	System.out.println("b owner page isssssssssssss"+b);
	String c=(String)session.getAttribute("unamep");
	//session.setAttribute("nname",c);
	String d=(String)session.getAttribute("emailidp");
	//session.setAttribute("emailid",d);
	
	
	
	%>
	
</head>
<body>
	<div class="main">
		<div class="header">
			<div class="header_resize">
				<div class="logo">
					<img src="images/title.png" width="960" height="100">
				</div>

				<div class="clr"></div>
				<div class="menu_nav">
					<ul>
						<li><a href="index.html"><span>Home Page</span></a></li>
						
						<li><a href="search.jsp"><span>Back</span></a></li>
						<li><a href="index.html"><span>Logout</span></a></li>

					</ul>
				</div>
				<div class="clr"></div>
				<div class="slider">
					<div id="coin-slider">
						<a href="#"><img src="images/s1.png" width="960" height="360"
							alt="" /></a> <a href="#"><img src="images/s2.jpg" width="960"
							height="360" alt="" /></a> <a href="#"><img src="images/s3.jpg"
							width="960" height="360" alt="" /></a>
					</div>
					<div class="clr"></div>
				</div>
				<div class="clr"></div>
			</div>
		</div>
		<div class="content">
			<div class="content_resize">
				<div class="mainbar">
					<div class="article">
						<h2 align="center">User Requested File Status List</h2>
						<div class="clr"></div>
						<div class="post_content" align="center">
							
                   <table align="center" width="465" height="50">
				
				<tr>
				
				 <td width="65"  bgcolor="#808000"><font color="#FFFFFF" face="Monotype Corsiva, Arial" size="+1"><b>User Id</b></font></td>
            <td width="50" bgcolor="#808000"><p><font color="#FFFFFF" face="Monotype Corsiva, Arial" size="+1"><b>User Name</b>  </font></p></td>
                 <td width="50" bgcolor="#808000"><p><font color="#FFFFFF" face="Monotype Corsiva, Arial" size="+1"><b>File Id</b></font></p></td>
			   <td width="50" bgcolor="#808000"><p><font color="#FFFFFF" face="Monotype Corsiva, Arial" size="+1"><b>File Name</b></font></p></td>
			     
			     <td width="50" bgcolor="#808000"><p><font color="#FFFFFF" face="Monotype Corsiva, Arial" size="+1"><b>Status</b></font></p></td>
			       <td width="50" bgcolor="#808000"><p><font color="#FFFFFF" face="Monotype Corsiva, Arial" size="+1"><b>Decrypt Key</b></font></p></td>
				</tr>
		<%
		 
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;



try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select * from request where uid='"+ap+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 Integer id=rs.getInt("uid");

 String uname=rs.getString("uname");
String fid=rs.getString("fid");
String fname=rs.getString("fname");
String status=rs.getString("status");
String d_key=rs.getString("d_key");



 %>
 
 	<tr  bgcolor="#FFCCFF"> 
		  <td bgcolor="#FFCCFF"> 
             <font color="#000000" face="Monotype Corsiva, Arial" size="4"><%=id%></font>
            </td>
            	  <td bgcolor="#FFCCFF"> 
              <font color="#000000" face="Monotype Corsiva, Arial" size="4"><%=uname%></font>
            </td>
             <td bgcolor="#FFCCFF"> 
              <font color="#000000" face="Monotype Corsiva, Arial" size="4"><%=fid%></font>
            </td>
      	   <td bgcolor="#FFCCFF"> 
              <font color="#000000" face="Monotype Corsiva, Arial" size="4"><%=fname%></font>
            </td>
         	 
			 <td bgcolor="#FFCCFF"> 
              <font color="#000000" face="Monotype Corsiva, Arial" size="4"><%=status%></font>
            </td>
             <td bgcolor="#FFCCFF"> 
              <font color="#000000" face="Monotype Corsiva, Arial" size="4"><%=d_key%></font>
            </td>
            
				
          </tr>
				 <%
		  
}

}
 catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
				
				
				</table>  
        
  
         
						</div>
					</div>

				</div>
				<div class="sidebar">
					<div class="gadget">
						<h2 class="star"></h2>
						<div class="clr"></div>
						<img src="images/cloud.png" width="240" height="250"><br>
					</div>

				</div>
				<div class="clr"></div>
			</div>
		</div>
		<div class="fbg">
			<div class="fbg_resize">

<marquee behavior="alternate"><font size="4" color="white">Two-Factor Data Security Protection Mechanism for Cloud
	Storage System</font></marquee>

				<div class="clr"></div>
			</div>
		</div>

	</div>
</body>
</html>
