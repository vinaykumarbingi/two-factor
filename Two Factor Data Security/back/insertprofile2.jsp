<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*"  errorPage="Error.jsp"%>
<%@page import="ElGamal.*"%>
<html>
<head>
</head>
<body>

<%
		/*System.out.println("****************");
	        System.out.println("\n");
	        System.out.println("Server 2 Registration");
	        System.out.println("\n");
	    System.out.println("****************");*/
		
		Statement st = null;
		ResultSet rs1=null;
		int id=0;
		
	try{
		
			Connection con1=databasecon.getconnection();
			st=con1.createStatement();
			String sql1="select max(id) from profile1";
			rs1=st.executeQuery(sql1);
			while(rs1.next()){
				if(rs1.getInt(1)==0)
					id=1;
				else
					id=rs1.getInt(1)+1;
				
		String name=null,gender=null,email=null,password=null,status="Allow",image=null,pkey=null,location=null;
		
		name=request.getParameter("name");
		session.setAttribute("myname",name);
		/*email=request.getParameter("email");
		session.setAttribute("myemail",email);
		password=request.getParameter("password");
		
		location=request.getParameter("location");*/
		pkey=request.getParameter("pkey");
		session.setAttribute("privatekey",pkey);
		
		java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "dd-MM-yyyy";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;
 
		
			
		
		try {
			
			
			Connection con=databasecon.getconnection(); 

			PreparedStatement ps=con.prepareStatement("INSERT INTO profile1 VALUES(?,?,?)");
				
               	ps.setInt(1,id);
				ps.setString(2,name);	
       			ps.setString(3,pkey);      	
			int x=ps.executeUpdate();
		
			if(x!=0)
			{
				response.sendRedirect("sendkey.jsp?message=Successfully Registered");
			}
			else
			{
				response.sendRedirect("sendkey.jsp?message=fail");
			}
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
			}	
	}
	catch (Exception eq) 
		{
			out.println(eq.getMessage());
		}
		
	
 %>
</body>
</html>