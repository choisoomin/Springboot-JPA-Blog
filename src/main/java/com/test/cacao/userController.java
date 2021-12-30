package com.test.cacao;

import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.Service.userService;
import com.test.VO.UserVO;

@Controller
public class userController {
	@Inject
	private userService usSer;

	// 회원 가입창
	@RequestMapping(value = "/userinform", method = RequestMethod.GET)
	public String userinform(Locale locale, Model model) throws Exception {
		return "user/Userinput";
	}

	// 회원등록 이벤트
	@RequestMapping(value = "/userinput", method = RequestMethod.GET)
	public String userinput(UserVO uservo, Locale locale, Model model) throws Exception {
		usSer.userinput(uservo);
		return "user/UserinputList";
	}

	// 아이디 중복체크
	@RequestMapping(value = "/ID_check", method = RequestMethod.GET)
	@ResponseBody
	public String ID_check(@RequestParam("index") String id, UserVO uservo, Locale locale, Model model)	throws Exception {
		System.out.println(uservo.getId());
		return null;
	}
}
