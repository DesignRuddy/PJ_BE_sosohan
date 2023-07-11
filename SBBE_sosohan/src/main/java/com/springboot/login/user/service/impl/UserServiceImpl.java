package com.springboot.login.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.login.user.model.UserVO;

import com.springboot.login.user.repository.UserDAO;
import com.springboot.login.user.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	/**
	 * 아이디, 패스워드로 회원 조회 처리함
	 * @param userVO
	 * @throws Exception
	 */
	@Override
	public UserVO selectuserByIdByPw(UserVO userVO) throws Exception {
		UserVO resultVO = userDAO.findByUserIdAndUserPw(userVO.getUserId(), userVO.getUserPw());
		return resultVO;
	}

	 @Override
	    public UserVO insertuserByIdByPw(UserVO userVO) throws Exception {
	        UserVO resultVO = userDAO.save(userVO);
	        return resultVO;
	    }
	}