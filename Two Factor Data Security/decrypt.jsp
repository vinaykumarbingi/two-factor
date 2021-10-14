<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
<html>
    <head>
	<title>login</title>
    </head>
    <body>
	<form>
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
	
	
	
	
	
    String key=request.getParameter("key");
	System.out.println(key);
String s10=(String)session.getAttribute("fid");
 System.out.println(s10);
	String s=null;
	
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select d_key,uid,fid from request where fid='"+s10+"' and uid='"+ap+"' ";
	try
	{
	    con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		while(rs.next())
		{
		
		 s=rs.getString(1);
		System.out.println(s);
		
		}
		
		
		if(key.equals(s))
		{
		response.sendRedirect("file_view.jsp");
			}
			 else
	     {
		 
		
		
	out.println("U r Not Authorized User");
	  }
			
			
				
		
	   
	}
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }

            %>
             </form>
       </body> 	
</html>