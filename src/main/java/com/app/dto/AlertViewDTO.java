package com.app.dto;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Objects;

public class AlertViewDTO {

//	알람 조회 (DTO) - AlertViewDTO
//	ALERT - POINT_LOG - MEMBER - MEMBER_IMG - 
//	BOARD_POST - BOARD_LIKE - BOARD_COMMENT - 
//	BOARD_COMMENT_LIKE - SCHEDULE - ACHIEVEMENT_COMPLETE
	
//	AlertVO
	private Long alertId;
	private String alertType;
	private String alertMessage;
	private Timestamp alertCreateTime;
	private int alertRead;
	private Timestamp alertReadTime;
	
//	MemberPointLogVO
	private Long memberPointLogid;
	private int memberPointVariance;
	private String memberPointReason;
	private Timestamp memberPointTime;
	
//	MemberVO
	private Long memberId;
	private String memberEmail;
	private String memberNickName;
	private String memberComment;
	private String memberName;
	private String memberGender;
	private Timestamp memberBirth;
	private int memberPoint;
	private int memberTermPormotionAgree;
	
//	MemberImgVO
	private Long memberImgId;
	private String memberImageName;
	private String memberImagePath;
	
//	BoardPostVO
	private Long boardPostId;
	private String boardTitle;
	
//	BoardLikeVO
	private Long boardLikeId;
	private Timestamp boardLikeCreateDate;
	
//	BoardCommentVO
	private Long boardCommentId;
	private String boardCommentContent;
	private Timestamp boardCommentCreateDate;

//	BoardCommentLikeVO
	private Long boardCommentLikeId;
	private Timestamp boardCommentLikeCreateDate;
	
//	ScheduleVO
	private Long scheduleId;
	private String scheduleTitle;
	private String scheduleContent;
	private Date scheduleStartDate;
	private Date scheduleEndDate;
	private Timestamp scheduleCreateDate;
	private String scheduleColor;
	
//	AchievementCompleteVO
	private Long achievementCompleteId;
	private int achievementCurrentMission;
	private Long achievementId;
	
	public AlertViewDTO() {;}

	public AlertViewDTO(Long alertId, String alertType, String alertMessage, Timestamp alertCreateTime, int alertRead,
			Timestamp alertReadTime, Long memberPointLogid, int memberPointVariance, String memberPointReason,
			Timestamp memberPointTime, Long memberId, String memberEmail, String memberNickName, String memberComment,
			String memberName, String memberGender, Timestamp memberBirth, int memberPoint,
			int memberTermPormotionAgree, Long memberImgId, String memberImageName, String memberImagePath,
			Long boardPostId, String boardTitle, Long boardLikeId, Timestamp boardLikeCreateDate, Long boardCommentId,
			String boardCommentContent, Timestamp boardCommentCreateDate, Long boardCommentLikeId,
			Timestamp boardCommentLikeCreateDate, Long scheduleId, String scheduleTitle, String scheduleContent,
			Date scheduleStartDate, Date scheduleEndDate, Timestamp scheduleCreateDate, String scheduleColor,
			Long achievementCompleteId, int achievementCurrentMission, Long achievementId) {
		this.alertId = alertId;
		this.alertType = alertType;
		this.alertMessage = alertMessage;
		this.alertCreateTime = alertCreateTime;
		this.alertRead = alertRead;
		this.alertReadTime = alertReadTime;
		this.memberPointLogid = memberPointLogid;
		this.memberPointVariance = memberPointVariance;
		this.memberPointReason = memberPointReason;
		this.memberPointTime = memberPointTime;
		this.memberId = memberId;
		this.memberEmail = memberEmail;
		this.memberNickName = memberNickName;
		this.memberComment = memberComment;
		this.memberName = memberName;
		this.memberGender = memberGender;
		this.memberBirth = memberBirth;
		this.memberPoint = memberPoint;
		this.memberTermPormotionAgree = memberTermPormotionAgree;
		this.memberImgId = memberImgId;
		this.memberImageName = memberImageName;
		this.memberImagePath = memberImagePath;
		this.boardPostId = boardPostId;
		this.boardTitle = boardTitle;
		this.boardLikeId = boardLikeId;
		this.boardLikeCreateDate = boardLikeCreateDate;
		this.boardCommentId = boardCommentId;
		this.boardCommentContent = boardCommentContent;
		this.boardCommentCreateDate = boardCommentCreateDate;
		this.boardCommentLikeId = boardCommentLikeId;
		this.boardCommentLikeCreateDate = boardCommentLikeCreateDate;
		this.scheduleId = scheduleId;
		this.scheduleTitle = scheduleTitle;
		this.scheduleContent = scheduleContent;
		this.scheduleStartDate = scheduleStartDate;
		this.scheduleEndDate = scheduleEndDate;
		this.scheduleCreateDate = scheduleCreateDate;
		this.scheduleColor = scheduleColor;
		this.achievementCompleteId = achievementCompleteId;
		this.achievementCurrentMission = achievementCurrentMission;
		this.achievementId = achievementId;
	}

	public Long getAlertId() {
		return alertId;
	}

	public void setAlertId(Long alertId) {
		this.alertId = alertId;
	}

	public String getAlertType() {
		return alertType;
	}

	public void setAlertType(String alertType) {
		this.alertType = alertType;
	}

	public String getAlertMessage() {
		return alertMessage;
	}

	public void setAlertMessage(String alertMessage) {
		this.alertMessage = alertMessage;
	}

	public Timestamp getAlertCreateTime() {
		return alertCreateTime;
	}

	public void setAlertCreateTime(Timestamp alertCreateTime) {
		this.alertCreateTime = alertCreateTime;
	}

	public int getAlertRead() {
		return alertRead;
	}

	public void setAlertRead(int alertRead) {
		this.alertRead = alertRead;
	}

	public Timestamp getAlertReadTime() {
		return alertReadTime;
	}

	public void setAlertReadTime(Timestamp alertReadTime) {
		this.alertReadTime = alertReadTime;
	}

	public Long getMemberPointLogid() {
		return memberPointLogid;
	}

	public void setMemberPointLogid(Long memberPointLogid) {
		this.memberPointLogid = memberPointLogid;
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

	public int getMemberPoint() {
		return memberPoint;
	}

	public void setMemberPoint(int memberPoint) {
		this.memberPoint = memberPoint;
	}

	public int getMemberTermPormotionAgree() {
		return memberTermPormotionAgree;
	}

	public void setMemberTermPormotionAgree(int memberTermPormotionAgree) {
		this.memberTermPormotionAgree = memberTermPormotionAgree;
	}

	public Long getMemberImgId() {
		return memberImgId;
	}

	public void setMemberImgId(Long memberImgId) {
		this.memberImgId = memberImgId;
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

	public Long getBoardPostId() {
		return boardPostId;
	}

	public void setBoardPostId(Long boardPostId) {
		this.boardPostId = boardPostId;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public Long getBoardLikeId() {
		return boardLikeId;
	}

	public void setBoardLikeId(Long boardLikeId) {
		this.boardLikeId = boardLikeId;
	}

	public Timestamp getBoardLikeCreateDate() {
		return boardLikeCreateDate;
	}

	public void setBoardLikeCreateDate(Timestamp boardLikeCreateDate) {
		this.boardLikeCreateDate = boardLikeCreateDate;
	}

	public Long getBoardCommentId() {
		return boardCommentId;
	}

	public void setBoardCommentId(Long boardCommentId) {
		this.boardCommentId = boardCommentId;
	}

	public String getBoardCommentContent() {
		return boardCommentContent;
	}

	public void setBoardCommentContent(String boardCommentContent) {
		this.boardCommentContent = boardCommentContent;
	}

	public Timestamp getBoardCommentCreateDate() {
		return boardCommentCreateDate;
	}

	public void setBoardCommentCreateDate(Timestamp boardCommentCreateDate) {
		this.boardCommentCreateDate = boardCommentCreateDate;
	}

	public Long getBoardCommentLikeId() {
		return boardCommentLikeId;
	}

	public void setBoardCommentLikeId(Long boardCommentLikeId) {
		this.boardCommentLikeId = boardCommentLikeId;
	}

	public Timestamp getBoardCommentLikeCreateDate() {
		return boardCommentLikeCreateDate;
	}

	public void setBoardCommentLikeCreateDate(Timestamp boardCommentLikeCreateDate) {
		this.boardCommentLikeCreateDate = boardCommentLikeCreateDate;
	}

	public Long getScheduleId() {
		return scheduleId;
	}

	public void setScheduleId(Long scheduleId) {
		this.scheduleId = scheduleId;
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

	public Long getAchievementCompleteId() {
		return achievementCompleteId;
	}

	public void setAchievementCompleteId(Long achievementCompleteId) {
		this.achievementCompleteId = achievementCompleteId;
	}

	public int getAchievementCurrentMission() {
		return achievementCurrentMission;
	}

	public void setAchievementCurrentMission(int achievementCurrentMission) {
		this.achievementCurrentMission = achievementCurrentMission;
	}

	public Long getAchievementId() {
		return achievementId;
	}

	public void setAchievementId(Long achievementId) {
		this.achievementId = achievementId;
	}

	@Override
	public String toString() {
		return "AlertViewDTO [alertId=" + alertId + ", alertType=" + alertType + ", alertMessage=" + alertMessage
				+ ", alertCreateTime=" + alertCreateTime + ", alertRead=" + alertRead + ", alertReadTime="
				+ alertReadTime + ", memberPointLogid=" + memberPointLogid + ", memberPointVariance="
				+ memberPointVariance + ", memberPointReason=" + memberPointReason + ", memberPointTime="
				+ memberPointTime + ", memberId=" + memberId + ", memberEmail=" + memberEmail + ", memberNickName="
				+ memberNickName + ", memberComment=" + memberComment + ", memberName=" + memberName + ", memberGender="
				+ memberGender + ", memberBirth=" + memberBirth + ", memberPoint=" + memberPoint
				+ ", memberTermPormotionAgree=" + memberTermPormotionAgree + ", memberImgId=" + memberImgId
				+ ", memberImageName=" + memberImageName + ", memberImagePath=" + memberImagePath + ", boardPostId="
				+ boardPostId + ", boardTitle=" + boardTitle + ", boardLikeId=" + boardLikeId + ", boardLikeCreateDate="
				+ boardLikeCreateDate + ", boardCommentId=" + boardCommentId + ", boardCommentContent="
				+ boardCommentContent + ", boardCommentCreateDate=" + boardCommentCreateDate + ", boardCommentLikeId="
				+ boardCommentLikeId + ", boardCommentLikeCreateDate=" + boardCommentLikeCreateDate + ", scheduleId="
				+ scheduleId + ", scheduleTitle=" + scheduleTitle + ", scheduleContent=" + scheduleContent
				+ ", scheduleStartDate=" + scheduleStartDate + ", scheduleEndDate=" + scheduleEndDate
				+ ", scheduleCreateDate=" + scheduleCreateDate + ", scheduleColor=" + scheduleColor
				+ ", achievementCompleteId=" + achievementCompleteId + ", achievementCurrentMission="
				+ achievementCurrentMission + ", achievementId=" + achievementId + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(alertId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		AlertViewDTO other = (AlertViewDTO) obj;
		return Objects.equals(alertId, other.alertId);
	}
}
