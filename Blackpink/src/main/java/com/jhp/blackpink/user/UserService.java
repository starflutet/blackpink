package com.jhp.blackpink.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

	@Autowired
	private UserMapper mapper;
	
	public UserVO selUser(UserVO param) {
		UserVO userInfo = mapper.selUser(param);
		if(userInfo == null) {
			mapper.insUser(param);
			return mapper.selUser(param);
		}
		return userInfo;
	}
	
	public int insUser(UserVO param) {
		return mapper.insUser(param);
	}
}
