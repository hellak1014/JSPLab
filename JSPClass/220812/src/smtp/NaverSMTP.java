package smtp;

import java.util.Map;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class NaverSMTP {

	private final Properties serverInfo;  //서버 정보
	private final Authenticator auth;      //인증 정보
	
	public NaverSMTP() {  // 생성자 (1)리턴값 없음  (2)클래스 명과 동일하다
		serverInfo = new Properties();
		serverInfo.put("mail.smtp.host", "smtp.naver.com");//stmp 사용할 메일서버
		serverInfo.put("mail.smtp.port","465");//포트번호
		serverInfo.put("mail.smtp.starttls.enable","true");
		serverInfo.put("mail.smtp.auth","true");
		serverInfo.put("mail.smtp.debug","true");
		serverInfo.put("mail.smtp.soketFactory.port","465"); //포트번호
		serverInfo.put("mail.smtp.soketFactory.class","javax.net.ssl.SSLSoketFactory");
		serverInfo.put("mail.smtp.soketFactory.fallback","false");
	
	
	//네이버 사용자 정보
	auth = new Authenticator() {
		protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication("hella_k","jongdae120408");
		}
	};
	
}
	
	public void emailSending(Map<String, String> mailInfo) throws AddressException, MessagingException {
		// <String, String> -> 제너릭. 자료형을 제한한다. map은 키값과 value값을 지정. 
		
		// 연결 
        Session session = Session.getInstance(serverInfo, auth);
        session.setDebug(true);

        // 2. 메시지 작성
        MimeMessage msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress(mailInfo.get("from")));     // 보내는 사람
        msg.addRecipient(Message.RecipientType.TO,
                         new InternetAddress(mailInfo.get("to")));  // 받는 사람
        msg.setSubject(mailInfo.get("subject"));                    // 제목
        msg.setContent(mailInfo.get("content"), mailInfo.get("format"));  // 내용

        // 3. 전송
        Transport.send(msg);
	}
	
}