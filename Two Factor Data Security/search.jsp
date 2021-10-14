<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>


	
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
						<li><a href="login.jsp"><span>Back</span></a></li>
						<li class="active"><a href="#"><span>File Search</span></a></li>
					
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
						<h2 align="center">Search File</h2>
						<div class="clr"></div>
						<div class="post_content" align="center">
							          <form name="f" action="search_result.jsp" method="post">
								<br><br>
										<fieldset
											style="border: 2px dashed red; border-radius: 25px; background: url(images/loginBoxBg.png); align: center; width: 550px; height: 300px;">
											<legend>
												<font size="4" style="font-weight: 900;" color="blue">Search
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
													<td><font color="white" size="4">Search File:</font></td>
													<td><input type="text" name="keyword" id="name"
														style="background-color: white; color: #000000; font-size: 18px; border-radius: 10px;"></td>
												</tr>
												
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr></tr>
												<tr>
													<td></td>
													<td><input type="submit" name="submit" id="submit"
														value="Search"
														style="background-color: white; color: #000000; font-size: 18px; border-radius: 10px;" />
														&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="reset"
														id="reset" value="Reset"
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
						<h2 class="star">Requested File Status</h2>
						<div class="clr"></div>
						<br></br>
						&nbsp;&nbsp;&nbsp;<a href="requestfile.jsp"><font size="4"> View Request File</font></a>
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
