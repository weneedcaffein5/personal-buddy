package com.app.dto;

import java.sql.Timestamp;
import java.util.Objects;

public class EventViewDTO {
	
//	이벤트
	private Long evnetId;
	private String eventTitle;
	private String eventDescription;
	private Timestamp eventCreateTime;
	private int eventViews;
	
//	이벤트 이미지
	private Long eventImgId;
	private String eventImgName;
	private String eventImgPath;
	
//	이벤트 좋아요
	private Long eventLikeId;
	private Timestamp eventLikeCreateTime;

//	멤버
	private Long memberId;
	private String memberEmail;
	private String memberNickName;
	
//	멤버 이미지
	private Long memberImgId;
	private String memberImgName;
	private String memberImgPath;
	
//	멤버 포인트 로그
	private Long memberPointLogId;
	private int memberPointVariance;
	private String memberPointReason;
	private Timestamp memberPointTime;

	public EventViewDTO() {;}

	public EventViewDTO(Long evnetId, String eventTitle, String eventDescription, Timestamp eventCreateTime,
			int eventViews, Long eventImgId, String eventImgName, String eventImgPath, Long eventLikeId,
			Timestamp eventLikeCreateTime, Long memberId, String memberEmail, String memberNickName, Long memberImgId,
			String memberImgName, String memberImgPath, Long memberPointLogId, int memberPointVariance,
			String memberPointReason, Timestamp memberPointTime) {
		super();
		this.evnetId = evnetId;
		this.eventTitle = eventTitle;
		this.eventDescription = eventDescription;
		this.eventCreateTime = eventCreateTime;
		this.eventViews = eventViews;
		this.eventImgId = eventImgId;
		this.eventImgName = eventImgName;
		this.eventImgPath = eventImgPath;
		this.eventLikeId = eventLikeId;
		this.eventLikeCreateTime = eventLikeCreateTime;
		this.memberId = memberId;
		this.memberEmail = memberEmail;
		this.memberNickName = memberNickName;
		this.memberImgId = memberImgId;
		this.memberImgName = memberImgName;
		this.memberImgPath = memberImgPath;
		this.memberPointLogId = memberPointLogId;
		this.memberPointVariance = memberPointVariance;
		this.memberPointReason = memberPointReason;
		this.memberPointTime = memberPointTime;
	}

	public Long getEvnetId() {
		return evnetId;
	}

	public void setEvnetId(Long evnetId) {
		this.evnetId = evnetId;
	}

	public String getEventTitle() {
		return eventTitle;
	}

	public void setEventTitle(String eventTitle) {
		this.eventTitle = eventTitle;
	}

	public String getEventDescription() {
		return eventDescription;
	}

	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}

	public Timestamp getEventCreateTime() {
		return eventCreateTime;
	}

	public void setEventCreateTime(Timestamp eventCreateTime) {
		this.eventCreateTime = eventCreateTime;
	}

	public int getEventViews() {
		return eventViews;
	}

	public void setEventViews(int eventViews) {
		this.eventViews = eventViews;
	}

	public Long getEventImgId() {
		return eventImgId;
	}

	public void setEventImgId(Long eventImgId) {
		this.eventImgId = eventImgId;
	}

	public String getEventImgName() {
		return eventImgName;
	}

	public void setEventImgName(String eventImgName) {
		this.eventImgName = eventImgName;
	}

	public String getEventImgPath() {
		return eventImgPath;
	}

	public void setEventImgPath(String eventImgPath) {
		this.eventImgPath = eventImgPath;
	}

	public Long getEventLikeId() {
		return eventLikeId;
	}

	public void setEventLikeId(Long eventLikeId) {
		this.eventLikeId = eventLikeId;
	}

	public Timestamp getEventLikeCreateTime() {
		return eventLikeCreateTime;
	}

	public void setEventLikeCreateTime(Timestamp eventLikeCreateTime) {
		this.eventLikeCreateTime = eventLikeCreateTime;
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

	@Override
	public int hashCode() {
		return Objects.hash(eventCreateTime, eventDescription, eventImgId, eventImgName, eventImgPath,
				eventLikeCreateTime, eventLikeId, eventTitle, eventViews, evnetId, memberEmail, memberId, memberImgId,
				memberImgName, memberImgPath, memberNickName, memberPointLogId, memberPointReason, memberPointTime,
				memberPointVariance);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		EventViewDTO other = (EventViewDTO) obj;
		return Objects.equals(eventCreateTime, other.eventCreateTime)
				&& Objects.equals(eventDescription, other.eventDescription)
				&& Objects.equals(eventImgId, other.eventImgId) && Objects.equals(eventImgName, other.eventImgName)
				&& Objects.equals(eventImgPath, other.eventImgPath)
				&& Objects.equals(eventLikeCreateTime, other.eventLikeCreateTime)
				&& Objects.equals(eventLikeId, other.eventLikeId) && Objects.equals(eventTitle, other.eventTitle)
				&& eventViews == other.eventViews && Objects.equals(evnetId, other.evnetId)
				&& Objects.equals(memberEmail, other.memberEmail) && Objects.equals(memberId, other.memberId)
				&& Objects.equals(memberImgId, other.memberImgId) && Objects.equals(memberImgName, other.memberImgName)
				&& Objects.equals(memberImgPath, other.memberImgPath)
				&& Objects.equals(memberNickName, other.memberNickName)
				&& Objects.equals(memberPointLogId, other.memberPointLogId)
				&& Objects.equals(memberPointReason, other.memberPointReason)
				&& Objects.equals(memberPointTime, other.memberPointTime)
				&& memberPointVariance == other.memberPointVariance;
	}

	@Override
	public String toString() {
		return "EventViewDTO [evnetId=" + evnetId + ", eventTitle=" + eventTitle + ", eventDescription="
				+ eventDescription + ", eventCreateTime=" + eventCreateTime + ", eventViews=" + eventViews
				+ ", eventImgId=" + eventImgId + ", eventImgName=" + eventImgName + ", eventImgPath=" + eventImgPath
				+ ", eventLikeId=" + eventLikeId + ", eventLikeCreateTime=" + eventLikeCreateTime + ", memberId="
				+ memberId + ", memberEmail=" + memberEmail + ", memberNickName=" + memberNickName + ", memberImgId="
				+ memberImgId + ", memberImgName=" + memberImgName + ", memberImgPath=" + memberImgPath
				+ ", memberPointLogId=" + memberPointLogId + ", memberPointVariance=" + memberPointVariance
				+ ", memberPointReason=" + memberPointReason + ", memberPointTime=" + memberPointTime + "]";
	}
	
}
