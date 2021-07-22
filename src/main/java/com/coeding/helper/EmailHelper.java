package com.coeding.helper;


import com.coeding.config.EmailConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;
/**
 * author Nhanle
 * */
@Component
public class EmailHelper {
    @Autowired
    private EmailConfig emailConfig;

    public  boolean send(String to, String subject, String content) {
        try {
            Properties properties = new Properties();
            properties.put("mail.smtp.auth", "true");
            properties.put("mail.smtp.starttls.enable", "true");
            properties.put("mail.smtp.host",  emailConfig.getHost());
            properties.put("mail.smtp.port", emailConfig.getPort());
            Session session = Session.getDefaultInstance(properties, new Authenticator() {


                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(emailConfig.getUsername(), emailConfig.getPassword());
                }

            });

            // mail declare
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(emailConfig.getUsername()));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(subject);
            message.setContent(content, "text/html");
            message.setSentDate(new Date());
            Transport.send(message);

            return true;
        } catch (Exception e) {
            System.err.println(e.getMessage());
            return false;

        }
    }

}
