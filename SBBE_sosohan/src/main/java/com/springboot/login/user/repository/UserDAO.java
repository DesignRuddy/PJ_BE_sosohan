package com.springboot.login.user.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springboot.login.user.model.UserVO;


// SPRINGBOOT_LOGIN 테이블 Repository
public interface UserDAO extends JpaRepository<UserVO, Integer> {

	// 회원가입여부를 확인하기 위한 userId, userPw로 단건 조회를 처리합니다.
	UserVO findByUserIdAndUserPw(String userId, String userPw);
}
