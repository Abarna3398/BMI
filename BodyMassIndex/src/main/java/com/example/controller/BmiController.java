package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;

import com.example.service.BmiService;
import com.example.bean.BmiBean;
import com.example.bean.BmiHistory;

@Controller
//@SessionAttributes("email")
public class BmiController {

	@Autowired
	BmiService service;
	
	
	@RequestMapping(value="/signin", method=RequestMethod.GET)
	public String show() {
		return "signin";
	}
	
	@PostMapping("/signinvalidate")
	public String showHomePage(ModelMap model,@RequestParam String email,HttpSession session,@RequestParam String password)
	{
		session.setAttribute("email", email);
		if(service.signinCheck(email, password))
		{
			String[] name = email.split("@");
			model.put("username",name[0]);
			return "CalculateBmi";
		}
		model.put("error","Invalid Credentials");
		return "signin";
	}
	
	@GetMapping("/signup")
	public String showSignup(@ModelAttribute("signup") BmiBean bmibean)
	{
		return "signup";
	}
	
	@PostMapping("/signin")
	public String userRegisteration(@ModelAttribute("signup") BmiBean bmibean,BindingResult result)
	{
		
		if(result.hasErrors())
		{
			
			return "signup";
		}
		int add=service.addUser(bmibean);
		if(add==1)
		{
			System.out.println("User added succesfully");
		}
		
		 return "signin";
	}
	
	

	@RequestMapping(value="/calculate", method=RequestMethod.POST)
	public String DisplayResult(ModelMap model,@RequestParam double height,@RequestParam double weight,@RequestParam Date date,HttpSession session)
	{
		double result =  service.calculateBmi(height,weight);
		BmiHistory bmihistory = new BmiHistory();
		bmihistory.setEmail((String)session.getAttribute("email"));
		bmihistory.setDate(date);
		bmihistory.setBmi(result);
		service.addHistory(bmihistory);
		if(result<=25)
		{
			model.put("result", result);
			return "less";
		}
		
			model.put("result", result);
			return "high";
	}
	
	@GetMapping("/viewhistory")
	public String showHistory(ModelMap model, BmiHistory bmihistory,HttpSession session) {
		//bmihistory.setEmail((String)session.getAttribute("email"));
		List<BmiHistory> list=service.viewHistory((String)session.getAttribute("email"));
		if(list == null)
		{
			System.out.println("No records");
		}
		String email=(String)session.getAttribute("email");
		String[] name = email.split("@");
		model.put("username",name[0]);
		model.put("list",list);
		return "history";
	}
	
	

}


