package abc.abc.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import abc.abc.entity.User;
import abc.abc.repository.UserRepository;

@Service
@Transactional
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	public void saveUser(User user) {
		userRepository.save(user);
	}
	
	public void registerNewUser(User user) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String encodedPassword = passwordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);
		
		userRepository.save(user);
	}
	
	
        // return all user's information, but hey, we may want to retrieve all except password right?! think about it!
	public List<User> retrieveAllUserProfile() {
		return userRepository.findAll();
	}
	
	public User getUserByUsername(String username) {
		return userRepository.findUserByUsername(username);
	}
	
	public User getUserById(Integer id) {
		return userRepository.findById(id).get();
	}
	
	public List<User> search(String keyword) {
		return userRepository.search(keyword);
	}
	
}
