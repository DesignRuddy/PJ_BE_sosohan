package com.springboot.login.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springboot.login.user.model.UserVO;
import com.springboot.login.user.service.UserService;


@CrossOrigin
@Controller
public class UserController {

	@Resource(name = "userService")
	private UserService userService;
	
	/**
	 * 로그인
	 * @param userVO
	 * @param request
	 * @param response
	 * @param session
	 * @param model
	 * @throws Exception
	 */
	@RequestMapping(value = "/loginAction.do")
	public @ResponseBody String loginAction(@ModelAttribute("userVO") UserVO userVO, HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception{
		String result = "N";
		
		try {
			UserVO resultVO = userService.selectuserByIdByPw(userVO);
			
			// 멤버의 정보가 있다면, 멤버의 이름을 리턴 처리합니다.
			if(resultVO != null) {
				result = resultVO.getUserName();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}	
	
	@RequestMapping(value = "/SignupAction.do", method = RequestMethod.POST)
	public @ResponseBody String signupAction(@RequestBody UserVO userVO) throws Exception {
	    String result = "N";

	    try {
	        // 중복된 아이디 체크 등의 회원가입 로직을 구현합니다.
	        // 예를 들어, 중복된 아이디가 있는지 확인하고, 회원정보를 저장하는 로직을 구현합니다.
	        // 구현된 로직을 작성하세요.
	        userService.insertuserByIdByPw(userVO);

	        result = "Y"; // 회원가입 성공 시 "Y"를 반환합니다.

	        // VO 객체에 잘 담겼는지 로깅으로 확인합니다.
	        System.out.println("Signup VO: " + userVO.toString());
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return result;
	}
	
	  @RequestMapping(value = "/logoutAction.do", method = RequestMethod.POST)
	    public String logout(HttpServletRequest request) {
	        HttpSession session = request.getSession(false);
	        if (session != null) {
	            session.invalidate();
	        }
	        return "redirect:/Login";
	    }
}