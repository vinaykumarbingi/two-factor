<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%

String emailid=(String)session.getAttribute("emailp");
Integer aa=(Integer)session.getAttribute("oo");

System.out.println("aa in send page @@@@@@@@@@@@@"+aa);


String bb=(String)session.getAttribute("uname");


System.out.println("bb in send page @@@@@@@@@@@@@"+bb);

String cc=(String)session.getAttribute("ww");


System.out.println("cc in send page @@@@@@@@@@@@@"+cc);


String mid=(String)session.getAttribute("mid");
int a=(int) (Math.random() * 1000000);
String c =Integer.toString(a);
session.setAttribute("pop",c);
System.out.println(c);
String oo="this is the decrypt key for your File";

String filename=(String)session.getAttribute("filename");

String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="customerservice404@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="customerservice@403"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =emailid; // out going email id

String from ="customerservice404@gmail.com"; //Email id of the recipient
String subject=(String)session.getAttribute("subject");
//String subject ="welcome";

String messageText ="<b>"+emailid+"</b><br>Index KeyWord:"+c+"<br>Message:"+oo+"";

//session.setAttribute("userid",userid);
//session.setAttribute("password",c);

boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
try {
transport.sendMessage(msg, msg.getAllRecipients());
//out.println("message successfully sended"); // assume it was sent
response.sendRedirect("up.jsp");
}
catch (Exception err) {

out.println("message not successfully sended"); // assume it’s a fail
}
transport.close();





%>


