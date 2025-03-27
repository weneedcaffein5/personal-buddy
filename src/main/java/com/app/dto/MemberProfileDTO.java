package com.app.dto;

import java.sql.Timestamp;
import java.util.Objects;

public class MemberProfileDTO {

//	MemberVO
	private Long memberId;
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

	public MemberProfileDTO(Long memberId, String memberEmail, String memberNickName, String memberComment,
			String memberName, String memberGender, Timestamp memberBirth, Timestamp memberCreateDate,
			Long memberImageId, String memberImageName, String memberImagePath) {
		super();
		this.memberId = memberId;
		this.memberEmail = memberEmail;
		this.memberNickName = memberNickName;
		this.memberComment = memberComment;
		this.memberName = memberName;
		this.memberGender = memberGender;
		this.memberBirth = memberBirth;
		this.memberCreateDate = memberCreateDate;
		this.memberImageId = memberImageId;
		this.memberImageName = memberImageName;
		this.memberImagePath = memberImagePath;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberNickName() {
		return memberNickName;
	}

	public void setMemberNickName(String memberNickName) {
		this.memberNickName = memberNickName;
	}

	public String getMemberComment() {
		return memberComment;
	}

	public void setMemberComment(String memberComment) {
		this.memberComment = memberComment;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	public Timestamp getMemberBirth() {
		return memberBirth;
	}

	public void setMemberBirth(Timestamp memberBirth) {
		this.memberBirth = memberBirth;
	}

	public Timestamp getMemberCreateDate() {
		return memberCreateDate;
	}

	public void setMemberCreateDate(Timestamp memberCreateDate) {
		this.memberCreateDate = memberCreateDate;
	}

	public Long getMemberImageId() {
		return memberImageId;
	}

	public void setMemberImageId(Long memberImageId) {
		this.memberImageId = memberImageId;
	}

	public String getMemberImageName() {
		return memberImageName;
	}

	public void setMemberImageName(String memberImageName) {
		this.memberImageName = memberImageName;
	}

	public String getMemberImagePath() {
		return memberImagePath;
	}

	public void setMemberImagePath(String memberImagePath) {
		this.memberImagePath = memberImagePath;
	}

	@Override
	public String toString() {
		return "MemberProfileDTO [memberId=" + memberId + ", memberEmail=" + memberEmail + ", memberNickName="
				+ memberNickName + ", memberComment=" + memberComment + ", memberName=" + memberName + ", memberGender="
				+ memberGender + ", memberBirth=" + memberBirth + ", memberCreateDate=" + memberCreateDate
				+ ", memberImageId=" + memberImageId + ", memberImageName=" + memberImageName + ", memberImagePath="
				+ memberImagePath + "]";
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(memberId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberProfileDTO other = (MemberProfileDTO) obj;
		return Objects.equals(memberId, other.memberId);
	}
	
}
