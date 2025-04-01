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
	private Long memberImgId;
	private String memberImgName;
	private String memberImgPath;
	
	public MemberProfileDTO() {;}

	public MemberProfileDTO(Long memberId, String memberEmail, String memberNickName, String memberComment,
			String memberName, String memberGender, Timestamp memberBirth, Timestamp memberCreateDate, Long memberImgId,
			String memberImgName, String memberImgPath) {
		this.memberId = memberId;
		this.memberEmail = memberEmail;
		this.memberNickName = memberNickName;
		this.memberComment = memberComment;
		this.memberName = memberName;
		this.memberGender = memberGender;
		this.memberBirth = memberBirth;
		this.memberCreateDate = memberCreateDate;
		this.memberImgId = memberImgId;
		this.memberImgName = memberImgName;
		this.memberImgPath = memberImgPath;
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

	public Long getMemberImgId() {
		return memberImgId;
	}

	public void setMemberImgId(Long memberImgId) {
		this.memberImgId = memberImgId;
	}

	public String getMemberImgName() {
		return memberImgName;
	}

	public void setMemberImgName(String memberImgName) {
		this.memberImgName = memberImgName;
	}

	public String getMemberImgPath() {
		return memberImgPath;
	}

	public void setMemberImgPath(String memberImgPath) {
		this.memberImgPath = memberImgPath;
	}

	@Override
	public String toString() {
		return "MemberProfileDTO [memberId=" + memberId + ", memberEmail=" + memberEmail + ", memberNickName="
				+ memberNickName + ", memberComment=" + memberComment + ", memberName=" + memberName + ", memberGender="
				+ memberGender + ", memberBirth=" + memberBirth + ", memberCreateDate=" + memberCreateDate
				+ ", memberImgId=" + memberImgId + ", memberImgName=" + memberImgName + ", memberImgPath="
				+ memberImgPath + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(memberId, memberImgId);
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
		return Objects.equals(memberId, other.memberId) && Objects.equals(memberImgId, other.memberImgId);
	}
	
	
}
