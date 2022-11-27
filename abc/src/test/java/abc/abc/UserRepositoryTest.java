package abc.abc;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.annotation.Rollback;

import abc.abc.entity.User;
import abc.abc.repository.UserRepository;
import net.bytebuddy.utility.RandomString;

@DisplayName("Unit Tests of UserRepository Class")
@DataJpaTest
@AutoConfigureTestDatabase(replace = Replace.NONE)
@Rollback(false)
public class UserRepositoryTest {
	
	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private TestEntityManager entityManager;
	
	@Test
	public void testCreateNewUser() {
		User user = new User();
		user.setUsername("admin");
		user.setEmail("admin@gmail.com");
		user.setPassword("password");
		
		User savedUser = entityManager.persistAndFlush(user); // retrive object using em
		
		assertThat(savedUser.getEmail()).isEqualTo(user.getEmail());
	}
	
	@Test
	public void testNumberRegisteredUsers() {
		long count = userRepo.count();
		System.err.println("size: " + count);
		assertThat(count).isEqualTo(userRepo.findAll().size());
	}
	
	
	@Test
	public void testFindUserByEmail() {
		String email = "Tom@gmail.com";
		User user = userRepo.findUserByEmail(email);
		
		assertThat(user.getEmail()).isEqualTo(email);
	}
	
	@Test
	public void testFindUserByUsername() {
		String username = "Tomy";
		User user = userRepo.findUserByUsername(username);
		
		assertThat(user.getUsername()).isEqualTo(username);
	}
	
	
	@Test
	public void testDeleteUserById() {
		User user = userRepo.findUserByUsername("admin");		
		userRepo.deleteById(user.getId()); // delete the user by id
		
		User deletedUser = userRepo.findUserByUsername("admin"); // test retrieve it back
		
		assertThat(deletedUser).isEqualTo(null);
	}
}
