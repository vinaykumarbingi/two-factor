<%@ page import="java.sql.*,databaseconnection.*"%>

<%
String s=null,s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null;
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


System.out.println("cc in up page @@@@@@@@@@@@@"+cc);

String v="downloaded";
String dkey=null;
try
{
Connection con1 = databasecon.getconnection();
PreparedStatement ps1=con1.prepareStatement("update request set status=?,d_key=? where uid='"+aa+"' and uname='"+bb+"' and fid='"+cc+"'");

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