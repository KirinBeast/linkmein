package abc.abc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.CurrentSecurityContext;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String getDashboardPage(Model model, @CurrentSecurityContext(expression = "authentication?.name") String username) {
		List<User> users = userService.retrieveAllUserProfile();
		model.addAttribute("users", users);
		
		//retrieve loggedinuser id
		User loggedInUser = userService.getUserByUsername(username);
		model.addAttribute("person", loggedInUser);
		
		return "dashboard";
	}
	
	@PostMapping("/dashboard")
	public void search(Model model, HttpServletRequest request) {
		String keyword = request.getParameter("keyword");
		List<User> users = userService.search(keyword);
		Integer count = users.size();
		
		model.addAttribute("count", count);
		model.addAttribute("users", users);
		//return "dashboard";
	}
	
	//Update Profile
	@PostMapping("/update-profile")
	public String updateUserProfile(Model model, @ModelAttribute("user") User tmp, @RequestParam("id") Integer user_id) {
		User user = userService.getUserById(user_id);
		
		user.setUsername(tmp.getUsername());
		user.setEmail(tmp.getEmail());
		user.setFirstname(tmp.getFirstname());
		user.setLastname(tmp.getLastname());
		user.setCompany(tmp.getCompany());
		user.setCity(tmp.getCity());
		user.setCountry(tmp.getCountry());

        userService.saveUser(user);
        
        return "redirect:dashboard";
	}
		

	@GetMapping("/profile")
	public String getprofilePage(Model model, @RequestParam("id") Integer user_id) {
		User user = userService.getUserById(user_id);
		model.addAttribute("user", user);
		return "profile";
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
