package sendEmail;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class MailUtilLocal {
	
	public static void sendEmail(String to, String from, String subject, String body, boolean bodyIsHTML)
	throws MessagingException{
		
		Properties pro = new Properties();
		pro.put("mail.transport.protocol", "smtp");
		pro.put("mai.smtp.host", "localhost");
		pro.put("mail.smtp", 25);
		
	    Session ses =Session.getDefaultInstance(pro);
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
		
		Transport.send(mes);
		
		
	}

}
