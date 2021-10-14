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
						<li ><a href="index.html"><span>Back</span></a></li>
						<li class="active"><a href="request.jsp"><span>Key Request</span></a></li>
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
						<h2 align="center">User Requested File View Here</h2>
						<div class="clr"></div>
						<div class="post_content" align="center">
							  
								<br><br>
										<fieldset
											style="border: 2px dashed red; border-radius: 25px; background: url(images/loginBoxBg.png); align: center; width: 550px; height: 300px;">
											<legend>
												<font size="4" style="font-weight: 900;" color="blue">Enter the Decrypt Key Here
													</font>
											</legend>
											                   
	<%
	
	Integer ap=(Integer)session.getAttribute("idu");
	System.out.println("ap decrypt issssssssssssssssssss"+ap);
		String b=(String)session.getAttribute("unamep");
		//session.setAttribute("owner_name",b);
		System.out.println("b decrypt page isssssssssssss"+b);
		String c=(String)session.getAttribute("unamep");
		//session.setAttribute("nname",c);
		String d=(String)session.getAttribute("emailidp");
		//session.setAttribute("emailid",d);
		
		
	
		String id2=(String)session.getAttribute("fid");
		String s=null,s1=null,s2=null,s3=null;
	try
{
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select fid,fname,ff from up where fid='"+id2+"'");
ResultSet rs=ps.executeQuery();
	
while(rs.next())
 {
 s=rs.getString(1); 
 s1=rs.getString(2);
 s3=rs.getString(3); 
 System.out.println(s3);
  }
	
 



}
 catch(Exception e1)
{
out.println(e1.getMessage());
}

		
		
		
		%>
		
		<%-- <%
String id=(String)session.getAttribute("id");
try
{
String t=null;
Connection con = databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select AES_DECRYPT(file,'key') from up where fid='"+id+"' ");
ResultSet rs = ps.executeQuery();
while(rs.next())
{
Blob file = rs.getBlob("AES_DECRYPT(file,'key')");
byte [] b= file.getBytes(1,(int)file.length());
t=new String(b);
session.setAttribute("t",t);
}

%> --%>
	
											<table width="350" align="center">
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<br></br>
												<tr>
													<td><font color="white" size="4">File_Id:</font></td>
													<td><input type="text" name="fid" value="<%=s%>" id="name"
														style="background-color: white; color: #000000; font-size: 18px; border-radius: 10px;"></td>
												</tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr>
													<td><font color="white" size="4">File_Name:</font></td>
													<td><input type="text" name="fname" value="<%=s1%>" id="name"
														style="background-color: white; color: #000000; font-size: 18px; border-radius: 10px;"></td>
												</tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr>
													<td><font color="white" size="4">Requested File:</font></td>
													<td><textarea cols="20" rows="5" style="background-color: white; color: #000000; font-size: 18px; border-radius: 10px;"><%=s3%></textarea></td>
												</tr>
												
													<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr><td><a href="download.jsp?aa=<%=id2%>"><font size="5" color="#990066"><b>
			Download</b></font></a></td>
										</tr>
											</table>
										
										</fieldset>
							 
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
	<%-- 	<%

}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%> --%>
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
