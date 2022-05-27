package com.todaySee;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.annotation.Commit;
import org.springframework.test.context.junit4.SpringRunner;

import com.todaySee.domain.UserVO;
import com.todaySee.home.persistence.UserRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
@Commit
public class PasswordEncoderTest {
	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private PasswordEncoder encoder;
	
	@Test
	public void testInsert() {
		UserVO uservo = new UserVO();
		uservo.setUserEmail("abc2@gmail.com");
		uservo.setUserPassword(encoder.encode("1234"));
		uservo.setUserNickname("moonstar");
		uservo.setUserName("Moon");
		userRepo.save(uservo);
	}
	
}
