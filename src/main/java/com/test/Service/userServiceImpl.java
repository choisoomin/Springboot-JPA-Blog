package com.test.Service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.test.DAO.userDAO;
import com.test.VO.UserVO;

@Service
public class userServiceImpl implements userService {
	@Inject
	private userDAO usdao;
	
	@Override
	public void userinput(UserVO uservo) throws Exception {
		usdao.userinput(uservo);
	}





}
