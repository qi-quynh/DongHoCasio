package sendEmail;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class MailUtilGmail {

	public static void sendMail(String to, String from, String subject, String body, boolean bodyIsHTML)
	throws MessagingException{
		
		Properties pro = new Properties();
		
		
		pro.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
		pro.put("mail.smtp.port", "587"); //TLS Port
		pro.put("mail.smtp.auth", "true"); //enable authentication
		pro.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS
		Session ses = Session.getDefaultInstance(pro);
		ses.setDebug(true);
		
		Message mes = new MimeMessage(ses);
		mes.setSubject(subject);
		
		if(bodyIsHTML)
			mes.setContent(body, "text/html");
		else
			mes.setText(body);
		
		Address fromAddress = new InternetAddress(from);
		Address toAddress = new InternetAddress(to);
		mes.setFrom(fromAddress);
		mes.setRecipient(Message.RecipientType.TO, toAddress);
		try {
		Transport tran = ses.getTransport();
	
		tran.sendMessage(mes, mes.getAllRecipients());
		tran.close();
		}
	 catch (MessagingException e) {

		 System.out.println("Lỗi rồi nè");
		}
	}
}
