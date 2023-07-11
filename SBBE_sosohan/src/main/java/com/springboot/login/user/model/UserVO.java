package com.springboot.login.user.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.Data;


@SequenceGenerator(
		name = "USER_IDX_SEQ_GEN",
		sequenceName = "USER_IDX_SEQ",
		initialValue = 1,
		allocationSize = 1		
		)
@Data
@Entity
@Table(name = "USER_INFO")
public class UserVO {

	@Id
	@GeneratedValue(
			strategy = GenerationType.SEQUENCE,
			generator = "USER_IDX_SEQ_GEN"
			)
	@Column(name = "user_IDX")
	private int userIdx;
	
	@Column(name = "user_ID")
	private String userId;
	
	@Column(name = "user_PW")
	private String userPw;
	
	@Column(name = "user_NAME")
	private String userName;
	
	@Column(name = "EMAIL")
	private String email;
	
	@Column(name = "BIRTH_DATE")
	private String birthDate;
	
	@Column(name = "GENDER")
	private String gender;
	
	@Column(name = "PHONE_NUMBER")
	private String phoneNumber;	
}
