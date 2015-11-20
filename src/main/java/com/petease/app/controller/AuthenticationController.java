package com.petease.app.controller;

import java.util.List;
import java.util.Locale;

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
		modelView.addObject("User", user);
		return modelView;
	}

	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public ModelAndView addUser(@ModelAttribute("user") @Valid User user, BindingResult result, HttpSession session)
	{
		ModelAndView modelView;
		System.out.println(result.toString());
		authenticationServ.writeUserInfo(user);
 		modelView = new ModelAndView("redirect:/signupResponse");
 		session.setAttribute("User", user);
 		return modelView;
	}
}
