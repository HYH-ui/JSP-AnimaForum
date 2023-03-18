package com.bbs.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Topic implements java.io.Serializable {


	private Integer pid;
	private Integer fid;
	private String author;
	private Integer authorid;
	private String subject;
	private Integer view;
	private Integer replies;
	private Date addtime;

}