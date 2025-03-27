/*목표 달성*/

package com.app.dto;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Objects;

public class GetTargetDTO {
	
//	일정 
	private Long ScheduleId;
	private String scheduleTitle;
	private String scheduleContent;
	private Date scheduleStartDate;
	private Date scheduleEndDate;
	private Timestamp scheduleCreateDate;
	private String scheduleColor;
	private String scheduleCategory;
	private Long calenderId;
	private Long scheduleGroupId;
	
	
//	목표 달성
	private Long TargetId;
	private Timestamp targetCompleteDate;
	private String targetScheduleCategory;
	private Long memberId;
	

//	멤버 포인트 로그
	private Long memberPointLogId;
	private int memberPointVariance;
	private String memberPointReason;
	private Timestamp memberPointTime;


//	멤버
	private String memberEmail;
	private String memberPassword;
	private String memberNickName;
	private String memberComment;
	private String memberName;
	private String memberGender;
	private Timestamp memberBirth;
	private String memberPhone;
	private int memberPoint;
	private int memberAdmin;
	private Timestamp memberCreateDate;
	private int memberTermServiceAgree;
	private int memberTermInformationAgree;
	private int memberTermLocationAgree;
	private int memberTermPormotionAgree;

	
	public GetTargetDTO() {;}


	public GetTargetDTO(Long scheduleId, String scheduleTitle, String scheduleContent, Date scheduleStartDate,
			Date scheduleEndDate, Timestamp scheduleCreateDate, String scheduleColor, String scheduleCategory,
			Long calenderId, Long scheduleGroupId, Long targetId, Timestamp targetCompleteDate,
			String targetScheduleCategory, Long memberId, Long memberPointLogId, int memberPointVariance,
			String memberPointReason, Timestamp memberPointTime, String memberEmail, String memberPassword,
			String memberNickName, String memberComment, String memberName, String memberGender, Timestamp memberBirth,
			String memberPhone, int memberPoint, int memberAdmin, Timestamp memberCreateDate,
			int memberTermServiceAgree, int memberTermInformationAgree, int memberTermLocationAgree,
			int memberTermPormotionAgree) {
		super();
		ScheduleId = scheduleId;
		this.scheduleTitle = scheduleTitle;
		this.scheduleContent = scheduleContent;
		this.scheduleStartDate = scheduleStartDate;
		this.scheduleEndDate = scheduleEndDate;
		this.scheduleCreateDate = scheduleCreateDate;
		this.scheduleColor = scheduleColor;
		this.scheduleCategory = scheduleCategory;
		this.calenderId = calenderId;
		this.scheduleGroupId = scheduleGroupId;
		TargetId = targetId;
		this.targetCompleteDate = targetCompleteDate;
		this.targetScheduleCategory = targetScheduleCategory;
		this.memberId = memberId;
		this.memberPointLogId = memberPointLogId;
		this.memberPointVariance = memberPointVariance;
		this.memberPointReason = memberPointReason;
		this.memberPointTime = memberPointTime;
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
		return "GetTargetDTO [ScheduleId=" + ScheduleId + ", scheduleTitle=" + scheduleTitle + ", scheduleContent="
				+ scheduleContent + ", scheduleStartDate=" + scheduleStartDate + ", scheduleEndDate=" + scheduleEndDate
				+ ", scheduleCreateDate=" + scheduleCreateDate + ", scheduleColor=" + scheduleColor
				+ ", scheduleCategory=" + scheduleCategory + ", calenderId=" + calenderId + ", scheduleGroupId="
				+ scheduleGroupId + ", TargetId=" + TargetId + ", targetCompleteDate=" + targetCompleteDate
				+ ", targetScheduleCategory=" + targetScheduleCategory + ", memberId=" + memberId
				+ ", memberPointLogId=" + memberPointLogId + ", memberPointVariance=" + memberPointVariance
				+ ", memberPointReason=" + memberPointReason + ", memberPointTime=" + memberPointTime + ", memberEmail="
				+ memberEmail + ", memberPassword=" + memberPassword + ", memberNickName=" + memberNickName
				+ ", memberComment=" + memberComment + ", memberName=" + memberName + ", memberGender=" + memberGender
				+ ", memberBirth=" + memberBirth + ", memberPhone=" + memberPhone + ", memberPoint=" + memberPoint
				+ ", memberAdmin=" + memberAdmin + ", memberCreateDate=" + memberCreateDate
				+ ", memberTermServiceAgree=" + memberTermServiceAgree + ", memberTermInformationAgree="
				+ memberTermInformationAgree + ", memberTermLocationAgree=" + memberTermLocationAgree
				+ ", memberTermPormotionAgree=" + memberTermPormotionAgree + "]";
	}


	public Long getScheduleId() {
		return ScheduleId;
	}


	public void setScheduleId(Long scheduleId) {
		ScheduleId = scheduleId;
	}


	public String getScheduleTitle() {
		return scheduleTitle;
	}


	public void setScheduleTitle(String scheduleTitle) {
		this.scheduleTitle = scheduleTitle;
	}


	public String getScheduleContent() {
		return scheduleContent;
	}


	public void setScheduleContent(String scheduleContent) {
		this.scheduleContent = scheduleContent;
	}


	public Date getScheduleStartDate() {
		return scheduleStartDate;
	}


	public void setScheduleStartDate(Date scheduleStartDate) {
		this.scheduleStartDate = scheduleStartDate;
	}


	public Date getScheduleEndDate() {
		return scheduleEndDate;
	}


	public void setScheduleEndDate(Date scheduleEndDate) {
		this.scheduleEndDate = scheduleEndDate;
	}


	public Timestamp getScheduleCreateDate() {
		return scheduleCreateDate;
	}


	public void setScheduleCreateDate(Timestamp scheduleCreateDate) {
		this.scheduleCreateDate = scheduleCreateDate;
	}


	public String getScheduleColor() {
		return scheduleColor;
	}


	public void setScheduleColor(String scheduleColor) {
		this.scheduleColor = scheduleColor;
	}


	public String getScheduleCategory() {
		return scheduleCategory;
	}


	public void setScheduleCategory(String scheduleCategory) {
		this.scheduleCategory = scheduleCategory;
	}


	public Long getCalenderId() {
		return calenderId;
	}


	public void setCalenderId(Long calenderId) {
		this.calenderId = calenderId;
	}


	public Long getScheduleGroupId() {
		return scheduleGroupId;
	}


	public void setScheduleGroupId(Long scheduleGroupId) {
		this.scheduleGroupId = scheduleGroupId;
	}


	public Long getTargetId() {
		return TargetId;
	}


	public void setTargetId(Long targetId) {
		TargetId = targetId;
	}


	public Timestamp getTargetCompleteDate() {
		return targetCompleteDate;
	}


	public void setTargetCompleteDate(Timestamp targetCompleteDate) {
		this.targetCompleteDate = targetCompleteDate;
	}


	public String getTargetScheduleCategory() {
		return targetScheduleCategory;
	}


	public void setTargetScheduleCategory(String targetScheduleCategory) {
		this.targetScheduleCategory = targetScheduleCategory;
	}


	public Long getMemberId() {
		return memberId;
	}


	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}


	public Long getMemberPointLogId() {
		return memberPointLogId;
	}


	public void setMemberPointLogId(Long memberPointLogId) {
		this.memberPointLogId = memberPointLogId;
	}


	public int getMemberPointVariance() {
		return memberPointVariance;
	}


	public void setMemberPointVariance(int memberPointVariance) {
		this.memberPointVariance = memberPointVariance;
	}


	public String getMemberPointReason() {
		return memberPointReason;
	}


	public void setMemberPointReason(String memberPointReason) {
		this.memberPointReason = memberPointReason;
	}


	public Timestamp getMemberPointTime() {
		return memberPointTime;
	}


	public void setMemberPointTime(Timestamp memberPointTime) {
		this.memberPointTime = memberPointTime;
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


	public Timestamp getMemberBirth() {
		return memberBirth;
	}


	public void setMemberBirth(Timestamp memberBirth) {
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


	public Timestamp getMemberCreateDate() {
		return memberCreateDate;
	}


	public void setMemberCreateDate(Timestamp memberCreateDate) {
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


	@Override
	public int hashCode() {
		return Objects.hash(ScheduleId, TargetId, calenderId, memberId, memberPointLogId, scheduleGroupId);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		GetTargetDTO other = (GetTargetDTO) obj;
		return Objects.equals(ScheduleId, other.ScheduleId) && Objects.equals(TargetId, other.TargetId)
				&& Objects.equals(calenderId, other.calenderId) && Objects.equals(memberId, other.memberId)
				&& Objects.equals(memberPointLogId, other.memberPointLogId)
				&& Objects.equals(scheduleGroupId, other.scheduleGroupId);
	}
	
	
	

}
