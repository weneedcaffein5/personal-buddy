package com.app.vo;

import java.util.Date;
import java.util.Objects;

public class MemberVO {
	
	private Long id;
	private String memberEmail;
	private String memberPassword;
	private String memberNickName;
	private String memberComment;
	private String memberName;
	private String memberGender;
	private Date memberBirth;
	private String memberPhone;
	private int memberPoint;
	private int memberAdmin;
	private Date memberCreateDate;
	private int memberTermServiceAgree;
	private int memberTermInformationAgree;
	private int memberTermLocationAgree;
	private int memberTermPormotionAgree;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
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

	public Date getMemberBirth() {
		return memberBirth;
	}

	public void setMemberBirth(Date memberBirth) {
		this.memberBirth = memberBirth;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public int getMemberPoint() {
		return memberPoint;
	}

	public void setMemberPoint(int memberPoint) {
		this.memberPoint = memberPoint;
	}

	public int getMemberAdmin() {
		return memberAdmin;
	}

	public void setMemberAdmin(int memberAdmin) {
		this.memberAdmin = memberAdmin;
	}

	public Date getMemberCreateDate() {
		return memberCreateDate;
	}

	public void setMemberCreateDate(Date memberCreateDate) {
		this.memberCreateDate = memberCreateDate;
	}

	public int getMemberTermServiceAgree() {
		return memberTermServiceAgree;
	}

	public void setMemberTermServiceAgree(int memberTermServiceAgree) {
		this.memberTermServiceAgree = memberTermServiceAgree;
	}

	public int getMemberTermInformationAgree() {
		return memberTermInformationAgree;
	}

	public void setMemberTermInformationAgree(int memberTermInformationAgree) {
		this.memberTermInformationAgree = memberTermInformationAgree;
	}

	public int getMemberTermLocationAgree() {
		return memberTermLocationAgree;
	}

	public void setMemberTermLocationAgree(int memberTermLocationAgree) {
		this.memberTermLocationAgree = memberTermLocationAgree;
	}

	public int getMemberTermPormotionAgree() {
		return memberTermPormotionAgree;
	}

	public void setMemberTermPormotionAgree(int memberTermPormotionAgree) {
		this.memberTermPormotionAgree = memberTermPormotionAgree;
	}

	public MemberVO() {;}
	public MemberVO(Long id, String memberEmail, String memberPassword, String memberNickName, String memberComment,
			String memberName, String memberGender, Date memberBirth, String memberPhone, int memberPoint,
			int memberAdmin, Date memberCreateDate, int memberTermServiceAgree, int memberTermInformationAgree,
			int memberTermLocationAgree, int memberTermPormotionAgree) {
		this.id = id;
		this.memberEmail = memberEmail;
		this.memberPassword = memberPassword;
		this.memberNickName = memberNickName;
		this.memberComment = memberComment;
		this.memberName = memberName;
		this.memberGender = memberGender;
		this.memberBirth = memberBirth;
		this.memberPhone = memberPhone;
		this.memberPoint = memberPoint;
		this.memberAdmin = memberAdmin;
		this.memberCreateDate = memberCreateDate;
		this.memberTermServiceAgree = memberTermServiceAgree;
		this.memberTermInformationAgree = memberTermInformationAgree;
		this.memberTermLocationAgree = memberTermLocationAgree;
		this.memberTermPormotionAgree = memberTermPormotionAgree;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", memberEmail=" + memberEmail + ", memberPassword=" + memberPassword
				+ ", memberNickName=" + memberNickName + ", memberComment=" + memberComment + ", memberName="
				+ memberName + ", memberGender=" + memberGender + ", memberBirth=" + memberBirth + ", memberPhone="
				+ memberPhone + ", memberPoint=" + memberPoint + ", memberAdmin=" + memberAdmin + ", memberCreateDate="
				+ memberCreateDate + ", memberTermServiceAgree=" + memberTermServiceAgree
				+ ", memberTermInformationAgree=" + memberTermInformationAgree + ", memberTermLocationAgree="
				+ memberTermLocationAgree + ", memberTermPormotionAgree=" + memberTermPormotionAgree + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberVO other = (MemberVO) obj;
		return Objects.equals(id, other.id);
	} 
	
	
}
