<%@ page import="java.sql.*, javax.sql.*,databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.sql.*,java.io.*"  %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>


<html>
<head>
<title></title>
<script language="JavaScript">

</script>
</head>
<body>
<%
Integer ap=(Integer)session.getAttribute("idu");
System.out.println("ap download issssssssssssssssssss"+ap);
	String b=(String)session.getAttribute("unamep");
	//session.setAttribute("owner_name",b);
	System.out.println("b download page isssssssssssss"+b);
	String c=(String)session.getAttribute("unamep");
	//session.setAttribute("nname",c);
	String d=(String)session.getAttribute("emailidp");
	//session.setAttribute("emailid",d);
	
	
	
	Blob file= null;
	
	String id=(String)session.getAttribute("fid");
	
	System.out.println("download page iddddddddddddddd"+id);
	PreparedStatement ps = null;
	ResultSet rs = null;
		String sql=null;
		Connection con=null;
	 sql = "select ff from up where fid='"+id+"'  ";
	
	try
	{
		con = databasecon.getconnection();
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		rs.next();
		file = rs.getBlob(1);
		session.setAttribute("resumeBlob",file);
		 response.sendRedirect("download1.jsp");
		 
		 
		

	}
	catch(Exception e)
	{
	
	out.println("Exception :"+e);
	}
	finally
	{
		if(con != null)
			con.close();
		if(ps != null)
			ps.close();
		if(rs != null)
			rs.close();
	}
	

//}
//else
//{//response.sendRedirect("cost_recharge2.jsp");
//}

	%>

<%
/* String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
String id1=null;
int aa=(Integer)session.getAttribute("oo");
// String c=(String)session.getAttribute("pop");
String ab =Integer.toString(aa);
System.out.println("aa in up page @@@@@@@@@@@@@@@@@"+aa);

//String dkey=(String)session.getAttribute("pop");

//System.out.println("aa in up page @@@@@@@@@@@@@@@@@"+dkey);

String bb=(String)session.getAttribute("uname");


System.out.println("bb in up page @@@@@@@@@@@@@"+bb);

String cc=(String)session.getAttribute("ww");


System.out.println("cc in up page @@@@@@@@@@@@@"+cc); */

String v="downloaded";
String dkey=null;
try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("update request set status=?,d_key=? where uid='"+ap+"' and uname='"+b+"' and fid='"+id+"'");

ps1.setString(1,v);
 ps1.setString(2,dkey);

ps1.executeUpdate();

         
 response.sendRedirect("file_view.jsp?success");	  
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				
			
				



%>
</body>
</html>