package abc.abc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import abc.abc.entity.User;
import abc.abc.service.UserService;


@Controller
public class CommonController {
	
	@Autowired
	private UserService userService;
	
	//get homepage
	@GetMapping("/")
	public String getHomepage() {
		return "index";
	}
	
	//get signin page
	@GetMapping("/signin")
	public String getSigninpage() {
		return "signin";
	}
	
	//get signup page
	@GetMapping("/signup")
	public String getSignuppage() {
		return "signup";
	}
	
	//get thank page
	@GetMapping("/thank")
	public String getThankpage() {
		return "thank";
	}
	
	@GetMapping("/dashboard")
	public String getDashboardpage() {
		return "dashboard";
	}
	
	@PostMapping("/process_signup")
	public String registerNewUser(@ModelAttribute("user") User user) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String encodedPassword = passwordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);
		
		userService.saveUser(user);
		
		System.out.println(user.getUsername());
		System.out.println(user.getEmail());
		System.out.println(user.getPassword());
		
		return "thank";
	}
	
	



}
