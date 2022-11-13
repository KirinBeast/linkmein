package abc.abc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import abc.abc.repository.UserRepository;
import abc.abc.entity.User;

public class UserDetailsServiceImpl implements UserDetailsService {
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.findUserByEmail(username);
		
		if(user == null) {
			throw new UsernameNotFoundException("user not found.");
		}
		
		return new CustomUserDetails(user);
	}
}
