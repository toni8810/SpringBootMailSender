package boot.mail.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MailController {
	
	@Autowired
	MailSender ms;
	
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String homePage() {
		return "index";
	}
	@RequestMapping(value="/sendMail", method=RequestMethod.POST)
	public String SendMail(@RequestParam String addressee, @RequestParam String subject, @RequestParam String message) {
		SimpleMailMessage smm = new SimpleMailMessage();
		smm.setFrom("tmsldck@gmail.com");
		smm.setSubject(subject);
		smm.setText(message);
		smm.setTo(addressee);
		ms.send(smm);
		return "/";
	}
	
	
}
