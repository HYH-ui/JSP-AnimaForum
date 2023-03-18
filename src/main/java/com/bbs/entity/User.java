package com.bbs.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User implements java.io.Serializable {

	private Integer id;
	private String userName;
	private String userPw;
	private String realName;
	private String email;
	private String birthday;



}