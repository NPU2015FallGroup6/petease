package com.petease.app.controller;

import java.util.List;
import java.util.Locale;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.petease.app.domain.User;
import com.petease.app.service.AuthenticationService;

@Controller
public class AuthenticationController {
	@Autowired
	@Qualifier("AuthenticationServiceImpl")
	AuthenticationService authenticationServ;

	@RequestMapping(value = "/signup", method=RequestMethod.GET)
	public ModelAndView getEmptyUser()
	{
		ModelAndView modelView;
		User user;
		
		user = new User();
		
		modelView = new ModelAndView("signup");
		modelView.addObject("user", user);
		return modelView;
	}
	
	@RequestMapping(value = "/signupconfirm", method=RequestMethod.GET)
	public ModelAndView getUserById(String userId)
	{
		ModelAndView modelView;
		User user;
		
		user=authenticationServ.readUserInfoById(userId);
		if(user==null)
		{
			modelView = new ModelAndView("noDataReturn");
			return modelView;
			
		}
		modelView = new ModelAndView("signupinfo");
		modelView.addObject("user", user);
		return modelView;
	}

	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public ModelAndView addUser(@ModelAttribute("user") @Valid User user, BindingResult result, HttpSession session)
	{
		System.out.println(user.toString());
		ModelAndView modelView;
		System.out.println(result.toString());
		authenticationServ.writeUserInfo(user);
 		modelView = new ModelAndView("redirect:/signupconfirm?userId="+user.getUserId());
 		session.setAttribute("User", user);
/*
	      // Recipient's email ID needs to be mentioned.
	      String to = user.getUserId();

	      // Sender's email ID needs to be mentioned
	      String from = "ellwen.zx@gmail.com";

	      // Assuming you are sending email from localhost
	      String host = "localhost";

	      // Get system properties
	      Properties properties = System.getProperties();

	      // Setup mail server
	      properties.setProperty("mail.smtp.host", host);

	      // Get the default Session object.
	      Session mailSession = Session.getDefaultInstance(properties);

	      try{
	         // Create a default MimeMessage object.
	         MimeMessage message = new MimeMessage(mailSession);

	         // Set From: header field of the header.
	         message.setFrom(new InternetAddress(from));

	         // Set To: header field of the header.
	         message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

	         // Set Subject: header field
	         message.setSubject("This is the Subject Line!");

	         // Now set the actual message
	         message.setText("This is actual message");

	         // Send message
	         Transport.send(message);
	         System.out.println("Sent message successfully....");
	      }catch (Exception mex) {
	         mex.printStackTrace();
	      }
	*/
 		return modelView;
	}
}
