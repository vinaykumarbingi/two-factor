<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<html>
<head>
<title> Scientific Workflow</title>

</head>

<body>

<%
Integer ap=(Integer)session.getAttribute("ooid");
System.out.println("ap issssssssssssssssssss"+ap);

Integer a=(Integer)session.getAttribute("idu");
String b=(String)session.getAttribute("unamep");
String c=(String)session.getAttribute("emailidp");
String d=(String)session.getAttribute("fid");
String e=(String)session.getAttribute("fname");
String f="waiting";
int aaa=(int) (Math.random() * 100);
int bbb=aaa*5;


java.util.Date now = new java.util.Date();

//Date date = new SimpleDateFormat("dd-MM-yyyy").parse(f);
//String a2= new SimpleDateFormat("yyyy-MM-dd").format(date);
PreparedStatement ps = null;

	ResultSet rs = null;
		
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into request(oid,uid,uname,uemail,fid,fname,status) values(?,?,?,?,?,?,?)");
		ps.setInt(1,ap); 
		ps.setInt(2,a); 
ps.setString(3,b);
ps.setString(4,c);

ps.setString(5,d);

ps.setString(6,e);

ps.setString(7,f);

ps.executeUpdate();
 
response.sendRedirect("index.html?success");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
</body>
</html>
