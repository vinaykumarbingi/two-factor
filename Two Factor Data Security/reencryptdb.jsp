<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>

<html>
<head>
<title>revisiting</title>

</head>

<body>

<%



//String eemail=(String)session.getAttribute("eemail");
	
//	System.out.println("email in encryptdbbb page isssssssssssss"+eemail);

String re4=(String)session.getAttribute("re2");
System.out.println("re4="+re4);

System.out.println("recrypt dddddddddd in encryptdbbbb page isssssssssssss"+re4);
	String a=(String)session.getAttribute("fname");
	
		System.out.println("email in encryptdbbbb page isssssssssssss"+a);
		
	String passw=(String)session.getAttribute("passw");
	
		System.out.println("email in encryptdbbb page isssssssssssss"+passw);


java.util.Date now = new java.util.Date();
String date=now.toString();
 String DATE_FORMAT = "yyyy-MM-dd";
 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
 String strDateNew = sdf.format(now) ;
 
 

// String pkey="waiting for key";







	ResultSet rs = null;
		
	try
	{
		
		Connection con = databasecon.getconnection();

		PreparedStatement ps = con.prepareStatement("INSERT INTO reencrypt VALUES(?,?,?,?)");
	
ps.setString(1,a);
ps.setString(2,passw);
ps.setString(3,strDateNew);
ps.setString(4,re4);


ps.executeUpdate();
  response.sendRedirect("index.html?Success"); 
}
catch(Exception x)
{
out.println(x.getMessage());
}

%>
</body>
</html>
