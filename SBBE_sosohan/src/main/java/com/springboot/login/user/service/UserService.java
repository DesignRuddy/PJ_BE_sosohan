package com.springboot.login.user.service;

import com.springboot.login.user.model.UserVO;



public interface UserService {

	/**
	 * 아이디, 패스워드로 회원 조회 처리함
	 * @param userVO
	 * @throws Exception
	 */
	UserVO selectuserByIdByPw(UserVO userVO) throws Exception;	
	
	UserVO insertuserByIdByPw(UserVO userVO) throws Exception;	
	
	
}
