<%@ page import="java.sql.*,databaseconnection.*"%>

<%
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
String id1=null;
int id=(Integer)session.getAttribute("idu");
System.out.println("id in update page issssssssss#############"+id);
int oo=(Integer)session.getAttribute("as");
System.out.println("id in update page issssssssss#############"+oo);
int oid=(Integer)session.getAttribute("as");
System.out.println("id in update page issssssssss#############"+oid);


int a=(int) (Math.random() * 1000000);
String c =Integer.toString(a);
session.setAttribute("pop",c);
System.out.println(c);
try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("update up set dkey=? where oid='"+id+"'");

ps1.setString(1,c);

ps1.executeUpdate();

         
 response.sendRedirect("index.html?success");	  
}

		
		catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
				
			
				



%>

