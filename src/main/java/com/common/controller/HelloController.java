package com.common.controller;
 
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import com.common.dao.impl.UserServiceDAOImpl;
import com.common.model.CreditCards;
import com.common.model.UserProfile;
import com.common.service.UserService;
 
@Controller
@RequestMapping("/welcome")
public class HelloController {
	Log logger = LogFactory.getLog(HelloController.class);
 
	@Autowired
	UserService userService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
 
		model.addAttribute("message", "Spring Security Hello World");
		return "hello";
 
	}

	@RequestMapping("/showUser")
	public String showUser(ModelMap model)
	{
		logger.info("Getting the existing users from the DB");
		model.addAttribute("userProfileList", userService.getUsers());
		return "showUser";
	}
	
	@RequestMapping(value="/addUser")
	public String addUserPage(@ModelAttribute("userProfile")UserProfile profile)
	{
		logger.info("Redirecting to Add User Page");
		return "addUser";
	}
	
	@RequestMapping(value="/add",method = RequestMethod.POST)
	public String add(@ModelAttribute("userProfile") UserProfile profile)
	{
		logger.info("Adding the New User" + profile.getFirstName());
		userService.addUser(profile);
		return "redirect:/welcome/showUser";
	}
	
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String addCreditCard(@PathVariable int id,@ModelAttribute("creditCards")CreditCards creditCards,Model model)
	{
		UserProfile profile = userService.findById(id);
		logger.info("Populating the User information :: "+ profile.getFirstName());
		model.addAttribute("userProfile",profile);
		return "addCreditCards";
	}
	
	@RequestMapping(value="/addCreditCardDetail/{id}",method = RequestMethod.POST)
	public String addCreditCardDetail(@PathVariable int id,@ModelAttribute("creditCards")CreditCards creditCards)
	{
		logger.info("Adding the Credit Card information to this User Id "+ id);
		userService.addUserCrediCardDetails(id,creditCards);
		return "redirect:/welcome/creditCardDetails/{id}";
	}
	
	@RequestMapping(value="/creditCardDetails/{id}",method = RequestMethod.GET)
	public String showCreditCardDetails(@PathVariable int id,@ModelAttribute("creditCards")CreditCards creditCards,Model map)
	{
		logger.info("Showing the Credit Card information to this User Id "+ id);
		map.addAttribute("userCardsList",userService.findById(id));
		return "showCreditCardDetails";
	}
	
	@RequestMapping(value="/deleteUser/{id}",method = RequestMethod.GET)
	public String deleteUser(@PathVariable int id,Model map)
	{
		logger.info("Deleting the User information of this User Id "+ id);
		userService.deleteUser(id);
		return "redirect:/welcome/showUser";
	}
	
	@RequestMapping(value="/showCreditCards/{id}",method = RequestMethod.GET)
	public String showCreditInfo(@PathVariable int id,Model map)
	{
		map.addAttribute("userProf",userService.showCreditInfo(id));
		return "showCreditCards";
	}
 
}