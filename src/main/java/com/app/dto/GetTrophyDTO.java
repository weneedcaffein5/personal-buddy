/*업적 달성*/

package com.app.dto;

import java.sql.Timestamp;
import java.util.Objects;

public class GetTrophyDTO {
	
//	업적 완료
	private Long achievementCompleteId;
	private String achievementName;
	private int achievementMission;
	private Long memberId;
	private Long achievementId;

	
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
	 
	
	public GetTrophyDTO() {;}


	public GetTrophyDTO(Long achievementCompleteId, String achievementName, int achievementMission, Long memberId,
			Long achievementId, Long memberPointLogId, int memberPointVariance, String memberPointReason,
			Timestamp memberPointTime, String memberEmail, String memberPassword, String memberNickName,
			String memberComment, String memberName, String memberGender, Timestamp memberBirth, String memberPhone,
			int memberPoint, int memberAdmin, Timestamp memberCreateDate, int memberTermServiceAgree,
			int memberTermInformationAgree, int memberTermLocationAgree, int memberTermPormotionAgree) {
		super();
		this.achievementCompleteId = achievementCompleteId;
		this.achievementName = achievementName;
		this.achievementMission = achievementMission;
		this.memberId = memberId;
		this.achievementId = achievementId;
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
		return "GetTrophyDTO [achievementCompleteId=" + achievementCompleteId + ", achievementName=" + achievementName
				+ ", achievementMission=" + achievementMission + ", memberId=" + memberId + ", achievementId="
				+ achievementId + ", memberPointLogId=" + memberPointLogId + ", memberPointVariance="
				+ memberPointVariance + ", memberPointReason=" + memberPointReason + ", memberPointTime="
				+ memberPointTime + ", memberEmail=" + memberEmail + ", memberPassword=" + memberPassword
				+ ", memberNickName=" + memberNickName + ", memberComment=" + memberComment + ", memberName="
				+ memberName + ", memberGender=" + memberGender + ", memberBirth=" + memberBirth + ", memberPhone="
				+ memberPhone + ", memberPoint=" + memberPoint + ", memberAdmin=" + memberAdmin + ", memberCreateDate="
				+ memberCreateDate + ", memberTermServiceAgree=" + memberTermServiceAgree
				+ ", memberTermInformationAgree=" + memberTermInformationAgree + ", memberTermLocationAgree="
				+ memberTermLocationAgree + ", memberTermPormotionAgree=" + memberTermPormotionAgree + "]";
	}


	public Long getAchievementCompleteId() {
		return achievementCompleteId;
	}


	public void setAchievementCompleteId(Long achievementCompleteId) {
		this.achievementCompleteId = achievementCompleteId;
	}


	public String getAchievementName() {
		return achievementName;
	}


	public void setAchievementName(String achievementName) {
		this.achievementName = achievementName;
	}


	public int getAchievementMission() {
		return achievementMission;
	}


	public void setAchievementMission(int achievementMission) {
		this.achievementMission = achievementMission;
	}


	public Long getMemberId() {
		return memberId;
	}


	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}


	public Long getAchievementId() {
		return achievementId;
	}


	public void setAchievementId(Long achievementId) {
		this.achievementId = achievementId;
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
		return Objects.hash(achievementCompleteId, achievementId, memberId, memberPointLogId);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		GetTrophyDTO other = (GetTrophyDTO) obj;
		return Objects.equals(achievementCompleteId, other.achievementCompleteId)
				&& Objects.equals(achievementId, other.achievementId) && Objects.equals(memberId, other.memberId)
				&& Objects.equals(memberPointLogId, other.memberPointLogId);
	}
	
	

}
