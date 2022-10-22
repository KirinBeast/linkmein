package abc.abc.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import abc.abc.entity.User;
import abc.abc.repository.UserRepository;

@Service
@Transactional
public class UserService {
	
	@Autowired
	private UserRepository userRepostory;
	
	public void saveUser(User user) {
		userRepostory.save(user);
	}

}
