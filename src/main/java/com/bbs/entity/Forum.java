package com.bbs.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Forum implements java.io.Serializable {


	private Integer fid;
	private String type;
	private String name;
	private Integer fup;
	private Short status;

}