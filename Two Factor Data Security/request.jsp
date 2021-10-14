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
						<li><a href="login.jsp"><span>User Login</span></a></li>
						<li><a href="search.jsp"><span>Search</span></a></li>
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
						<h2 align="center">Request for  Decrypt key from Cloud</h2>
						<div class="clr"></div>
						<div class="post_content" align="center">
						 <%
Integer ooid=(Integer)session.getAttribute("ooid");
System.out.println("ooid in viewwwwwwwwwwww request issssssssssssssssssss"+ooid);
String fid=(String)session.getAttribute("fid");
String fname=(String)session.getAttribute("fname");
String a=(String)session.getAttribute("uu");
//System.out.println("uu isssssssssssssss"+a);
String b=(String)session.getAttribute("uu1");
//System.out.println("uu1 @@@@@@@@@@@@@@@@@@ isssssssssssssss"+b);
Integer b2=(Integer)session.getAttribute("idu");
String b3=(String)session.getAttribute("unamep");
String b4=(String)session.getAttribute("emailidp");

%>      
							<form action="request1.jsp" method="get">
								
								<fieldset
									style="border: 2px dashed red; border-radius: 25px; background: url(images/loginBoxBg.png); align: center; width: 550px; height: 350px;">
									<legend>
										<font size="4" style="font-weight: 900;" color="blue">Key Request From Cloud</font>
									</legend>

									<table width="350">
									<br>
								<br>
										<tr>
											<td><font size="4" color="white">User Id:</font></td>
											<td><input type="text" name="uid" value="<%=b2%>" id="name"
												style="background-color: white; color: #000000; font-size: 18px; border-radius: 10px;"></td>
										</tr>
										
										<tr>
											<td><font size="4" color="white">User Name:</font></td>
											<td><input type="text" name="uname" value="<%=b3%>" id="name"
												style="background-color: white; color: #000000; font-size: 18px; border-radius: 10px;"></td>
										</tr>
										<tr>
											<td><font size="4" color="white">User Email:</font></td>
											<td><input type="text" name="uemail" value="<%=b4%>" id="name"
												style="background-color: white; color: #000000; font-size: 18px; border-radius: 10px;"></td>
									</tr>
										<tr>
											<td><font size="4" color="white">File Id:</font></td>
											<td><input type="text" name="fid" value="<%=fid%>" id="phone"
												style="background-color: white; color: #000000; font-size: 18px; border-radius: 10px;"></td>
										</tr>
										<tr>
											<td><font size="4" color="white">File Name:</font></td>
											<td><input type="text" name="fname"  value="<%=fname%>"  style="background-color: white; color: #000000; font-size: 18px; border-radius: 10px;">
												</td>
										</tr>
										<tr>
											<td></td>
											<td><input type="text" name="oid" value="<%=ooid%>" disabled="disabled"
												style="background-color: white; color: #000000; font-size: 18px; border-radius: 10px;"></td>
										</tr>
										
										<tr>
											<td></td>
											<td><input type="submit" name="submit" id="submit"
												value="Send Request"
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

				<marquee behavior="alternate">
				<font size="4" color="white">Two-Factor Data Security
					Protection Mechanism for Cloud Storage System</font></marquee>

				<div class="clr"></div>
			</div>
		</div>

	</div>
</body>
</html>
