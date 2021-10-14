<%@ page import="java.sql.*, javax.sql.*,databaseconnection.*,  java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>Chennai Sunday</title>
<script language="JavaScript">

</script>
</head>

<body>		
<%
Integer ap=(Integer)session.getAttribute("idu");
System.out.println("ap decrypt issssssssssssssssssss"+ap);
	String bname=(String)session.getAttribute("unamep");
	//session.setAttribute("owner_name",b);
	System.out.println("b decrypt page isssssssssssss"+bname);
	String c=(String)session.getAttribute("unamep");
	//session.setAttribute("nname",c);
	String d=(String)session.getAttribute("emailidp");
	//session.setAttribute("emailid",d);
	
	

		Blob b = (Blob)session.getAttribute("resumeBlob");
		if(b != null)
		{
			String fileName = "imp.txt";
			byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("text");
			response.setHeader("Content-Disposition","attachment; fileName=\""+fileName+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
			//session.removeAttribute("document1");
			//response.sendRedirect("updatedownload.jsp");
			
										


		}
		else
		{
			//response.sendRedirect("cost_recharge2.jsp");
			System.out.println("null");
		}
%>

</body>
</html>