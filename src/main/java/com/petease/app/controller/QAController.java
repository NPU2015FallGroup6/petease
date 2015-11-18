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

import com.petease.app.domain.QA;
import com.petease.app.service.QAService;




@Controller
public class QAController {
	@Autowired
	@Qualifier("QAServiceImpl")
	QAService qaServ;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "index_member";
	}
	@RequestMapping(value = "/qa", method = RequestMethod.GET)
	public String qa(Locale locale, Model model) {
		return "question";
	}

	@RequestMapping(value="/qa",method=RequestMethod.POST)
	public ModelAndView addQa(@ModelAttribute("qa") @Valid QA qa, BindingResult result, HttpSession session)
	{
		ModelAndView modelView;
		if(result.hasErrors())
		{
			modelView = new ModelAndView("qaDataForm");
			return modelView;
		}
		qaServ.writeQuestion(qa);
 		modelView = new ModelAndView("redirect:index");
 		session.setAttribute("qa", qa);
 		return modelView;
	}
}
