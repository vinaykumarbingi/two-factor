<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<%@page import="ElGamal.*"%>
<%	
	KeyGeneration keygen=new KeyGeneration();
		
	int y= (int)(Math.random()*500);
	String myemail=(String)session.getAttribute("myemail");
	String myname=(String)session.getAttribute("name");
	String smail=request.getParameter("smail");
	String x=null,p=null,b=null,sname=null,sc=null,myx=null;				
	Statement st4 = null;
	ResultSet rs4=null;
												
	try{
										
	Connection con4=databasecon.getconnection();
	st4=con4.createStatement();
	String sql4="select * from profile where email='"+smail+"'";
	rs4=st4.executeQuery(sql4);
		while(rs4.next()){
			x=rs4.getString("pkey");
			session.setAttribute("x",x);
			sname=rs4.getString("name");
		}	
	}
	catch (Exception eq4) 
	{
		out.println(eq4.getMessage());
	}
%>
<%		
				
	Statement st = null;
	ResultSet rs=null;
												
	try{
										
	Connection con=databasecon.getconnection();
	st=con.createStatement();
	String sql="select * from profile where email='"+smail+"'";
	rs=st.executeQuery(sql);
		while(rs.next()){
			p=rs.getString("primekey");
			b=rs.getString("generatorkey");
			sc=rs.getString("sc");
			session.setAttribute("p",p);
			session.setAttribute("b",b);
			session.setAttribute("sc",sc);
		}	
	}
	catch (Exception eq) 
	{
		out.println(eq.getMessage());
	}
%>
<%		
				
	Statement st1 = null;
	ResultSet rs1=null;
												
	try{
										
	Connection con1=databasecon.getconnection();
	st1=con1.createStatement();
	String sql1="select * from profile where email='"+myemail+"'";
	rs1=st1.executeQuery(sql1);
		while(rs1.next()){
			myx=rs1.getString("primekey");
			session.setAttribute("myx",myx);
			
		}	
	}
	catch (Exception eq1) 
	{
		out.println(eq1.getMessage());
	}
%>
<%
	Thread.sleep(100);
	
	String pkey = keygen.generate_Publickey(p,b,x);
	session.setAttribute("c",pkey);
	
	Thread.sleep(100);
%>

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
						<li ><a href="search.jsp"><span>File Search</span></a></li>
						<li class="active"><a href="search.jsp"><span>File Share</span></a></li>
						<li><a href="index.html"><span>Logout</span></a></li>
						<li><a href="#"><span>Welcome To <%=myname%></span></a></li>

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
						<h2 align="center">Sharing File</h2>
						<div class="clr"></div>
						<div class="post_content" align="center">
						    <form method="post" name="contact" action="uploadfile.jsp" enctype="multipart/form-data">
								<br><br>
										<fieldset
											style="border: 2px dashed red; border-radius: 25px; background: url(images/loginBoxBg.png); align: center; width: 550px; height: 300px;">
											<legend>
												<font size="4" style="font-weight: 900;" color="blue">File Download
													Here</font>
											</legend>
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
													<td><font color="white" size="4">Share To:</font></td>
													<td><input type="text"  name="sname" id="name" value="<%=sname%>"
														style="background-color: white; color: #000000; font-size: 18px; border-radius: 10px;"></td>
												</tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr>
													<td><font color="white" size="4">Title:</font></td>
													<td><input type="text"  name="title" id="name" 
														style="background-color: white; color: #000000; font-size: 18px; border-radius: 10px;"></td>
												</tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr>
													<td><font color="white" size="4">Message Key:</font></td>
													<td><input type="text"  name="mkey" id="name" value="<%=y%>"
														style="background-color: white; color: #000000; font-size: 18px; border-radius: 10px;"></td>
												</tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr>
													<td><font color="white" size="4">File:</font></td>
													<td><input type="file"  name="myfile" id="name"></td>
												</tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr>
													<td></td>
													<td><input type="submit" name="submit" id="submit"
														value="Login"
														style="background-color: white; color: #000000; font-size: 18px; border-radius: 10px;" />
														<input type="reset" name="reset" id="submit"
														value="Reset"
														style="background-color: white; color: #000000; font-size: 18px; border-radius: 10px;" /></td>
												</tr>
													<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												
											</table>
										
										</fieldset>
							</form>
						</div>
					</div>

				</div>
				<div class="sidebar">
					<div class="gadget">
						<h2 class="star">Public Keys of <%=sname%></h2>
						<div class="clr"></div>
						<p> 
          <h5>Prime Number: </h5>
          <h4> <%=p%> </h4></p>
          <p> 
          <h5>Generator: </h5>
          <h4> <%=b%> </h4></p>
          <p> 
          <h5>Secret Key: </h5>
          <h4> <%=x%> </h4></p>
          <p> 
          <h5>Public Key: </h5>
          <h4> <%=pkey%> </h4></p>
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
