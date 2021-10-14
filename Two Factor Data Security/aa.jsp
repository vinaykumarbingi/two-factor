<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.zip.*"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  %>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>


<%@page import="java.sql.*"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>

<%!
private static String algorithm = "DESede";
        private static Key key = null;
        private static Cipher cipher = null;
 private static byte[] encrypt(String input)throws Exception {
            cipher.init(Cipher.ENCRYPT_MODE, key);
            byte[] inputBytes = input.getBytes();
            return cipher.doFinal(inputBytes);
        }
%>
<%!
        private static String decrypt(byte[] encryptionBytes)throws Exception {
            cipher.init(Cipher.DECRYPT_MODE, key);
            byte[] recoveredBytes =  cipher.doFinal(encryptionBytes);
            String recovered =  new String(recoveredBytes);
            return recovered;
          }
          %>
<%

	java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;


//status="ondatabase";


String saveFile="";
//String contentType1=request.getAttribute("file");
String contentType = request.getContentType();




if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}


int ch;
    StringBuffer strContent = new StringBuffer("");
    FileInputStream fin = null;
	
	
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();


fin = new FileInputStream(ff);
      while ((ch = fin.read()) != -1)
        strContent.append((char) ch);
      fin.close();
	  String ss=(strContent.toString());

StringBuffer buffer=new StringBuffer();
 key = KeyGenerator.getInstance(algorithm).generateKey();
            cipher = Cipher.getInstance(algorithm);
            String input = ss;
           // System.out.println("Entered: " + input);
            byte[] encryptionBytes = encrypt(input);
            String passw=new String(encryptionBytes);



//out.print(passw);
String aa=(decrypt(passw.getBytes()));
//out.print(aa);

 String e3=(String)session.getAttribute("e2");
System.out.println("e3="+e3); 

String re3=(String)session.getAttribute("re2");
System.out.println("re3="+re3); 


	Integer oid=(Integer)session.getAttribute("idu");
	System.out.println("oid in aa page isssssssssss"+oid);
String oname=(String)session.getAttribute("nname");

//System.out.println(uname);
String oemail=(String)session.getAttribute("emailid");
	
	/* String ekey1=request.getParameter("ekey1");
	System.out.println("encrypted key $$$$$$$$$$$$$$$$$$"+ekey1);
	 */
	// String k1=request.getParameter("e1");
	// System.out.println("key="+k1);
	
String c=null;
String a=(String)session.getAttribute("fid");
session.setAttribute("fid",a);
System.out.println(c);
String b=(String)session.getAttribute("fname");
session.setAttribute("fname",b);
String index=(String)session.getAttribute("index");
//System.out.println(index); 
int ap=(int) (Math.random() * 1000000);
String s =Integer.toString(ap);
//c=request.getParameter("file");
FileInputStream fis;
PreparedStatement ps = null;
try{

Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into up(oid,oname,oemail,fid,fname,indexx,indexx1,file,ff,date,score,ekey)values(?,?,?,?,?,?,AES_ENCRYPT(?,'key'),?,?,?,?,?)");
			fis = new FileInputStream(ff);
			double size=ff.length();
		  double  size1=size/1024;
		  double size2=Math.round(size1*100.0)/100.0;
		  String size3=Double.toString(size2);
		  session.setAttribute("filesize",size3);
		  
			//File f = new File(saveFile);
			ps.setInt(1,oid);
			
			
				ps.setString(2,oname);
				
                ps.setString(3,oemail);
                ps.setString(4,a);
              
				 ps.setString(5,b);
				 
				 // session.setAttribute("b",b);
				  
				 	 ps.setString(6,index);
				  ps.setString(7,index);
				 
				 //session.setAttribute("fname",fname);
 ps.setString(8,passw);
 
 session.setAttribute("passw",passw);
 ps.setString(9,aa);
 // ps.setBinaryStream(6, (InputStream)fis, (int)(ff.length()));
        //System.out.println(passw);
            
ps.setString(10,strDateNew);
ps.setString(11,s);
ps.setString(12, e3);



//session.setAttribute("passw",passw);
//session.setAttribute("aa",aa);

ps.executeUpdate();
		response.sendRedirect("reencrypt.jsp");			
		
		
		
				
		} 
		
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
		
//out.print(ss);
	}
	
	
						
%>
