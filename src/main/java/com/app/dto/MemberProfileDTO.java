package com.app.dto;

import java.sql.Timestamp;

public class MemberProfileDTO {

//	MemberVO
	private Long id;
	private String memberEmail;
	private String memberNickName;
	private String memberComment;
	private String memberName;
	private String memberGender;
	private Timestamp memberBirth;
	private Timestamp memberCreateDate;
	
//	MemberImgVO
	private Long memberImageId;
	private String memberImageName;
	private String memberImagePath;
	
	public MemberProfileDTO() {;}
	
}
