package com.app.dto;

import java.sql.Timestamp;
import java.util.Objects;

public class EventCommentViewDTO {
	
//	이벤트 포스트
	Long eventId;
	
//	이벤트 댓글
	Long eventCommentId;
	String eventCommentDescription;
	Timestamp eventCommentCreateDate;
	
//	이벤트 댓글 좋아요
	Long eventCommentLikeId;
	Timestamp eventCommentLikeCreateDate;
	
//	멤버 아이디
	private Long memberId;
	private String memberEmail;
	private String memberNickName;
	
//	멤버 이미지
	private Long memberImgId;
	private String memberImgName;
	private String memberImgPath;
	public EventCommentViewDTO(Long eventId, Long eventCommentId, String eventCommentDescription,
			Timestamp eventCommentCreateDate, Long eventCommentLikeId, Timestamp eventCommentLikeCreateDate,
			Long memberId, String memberEmail, String memberNickName, Long memberImgId, String memberImgName,
			String memberImgPath) {
		super();
		this.eventId = eventId;
		this.eventCommentId = eventCommentId;
		this.eventCommentDescription = eventCommentDescription;
		this.eventCommentCreateDate = eventCommentCreateDate;
		this.eventCommentLikeId = eventCommentLikeId;
		this.eventCommentLikeCreateDate = eventCommentLikeCreateDate;
		this.memberId = memberId;
		this.memberEmail = memberEmail;
		this.memberNickName = memberNickName;
		this.memberImgId = memberImgId;
		this.memberImgName = memberImgName;
		this.memberImgPath = memberImgPath;
	}
	public Long getEventId() {
		return eventId;
	}
	public void setEventId(Long eventId) {
		this.eventId = eventId;
	}
	public Long getEventCommentId() {
		return eventCommentId;
	}
	public void setEventCommentId(Long eventCommentId) {
		this.eventCommentId = eventCommentId;
	}
	public String getEventCommentDescription() {
		return eventCommentDescription;
	}
	public void setEventCommentDescription(String eventCommentDescription) {
		this.eventCommentDescription = eventCommentDescription;
	}
	public Timestamp getEventCommentCreateDate() {
		return eventCommentCreateDate;
	}
	public void setEventCommentCreateDate(Timestamp eventCommentCreateDate) {
		this.eventCommentCreateDate = eventCommentCreateDate;
	}
	public Long getEventCommentLikeId() {
		return eventCommentLikeId;
	}
	public void setEventCommentLikeId(Long eventCommentLikeId) {
		this.eventCommentLikeId = eventCommentLikeId;
	}
	public Timestamp getEventCommentLikeCreateDate() {
		return eventCommentLikeCreateDate;
	}
	public void setEventCommentLikeCreateDate(Timestamp eventCommentLikeCreateDate) {
		this.eventCommentLikeCreateDate = eventCommentLikeCreateDate;
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
	@Override
	public int hashCode() {
		return Objects.hash(eventCommentCreateDate, eventCommentDescription, eventCommentId, eventCommentLikeCreateDate,
				eventCommentLikeId, eventId, memberEmail, memberId, memberImgId, memberImgName, memberImgPath,
				memberNickName);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		EventCommentViewDTO other = (EventCommentViewDTO) obj;
		return Objects.equals(eventCommentCreateDate, other.eventCommentCreateDate)
				&& Objects.equals(eventCommentDescription, other.eventCommentDescription)
				&& Objects.equals(eventCommentId, other.eventCommentId)
				&& Objects.equals(eventCommentLikeCreateDate, other.eventCommentLikeCreateDate)
				&& Objects.equals(eventCommentLikeId, other.eventCommentLikeId)
				&& Objects.equals(eventId, other.eventId) && Objects.equals(memberEmail, other.memberEmail)
				&& Objects.equals(memberId, other.memberId) && Objects.equals(memberImgId, other.memberImgId)
				&& Objects.equals(memberImgName, other.memberImgName)
				&& Objects.equals(memberImgPath, other.memberImgPath)
				&& Objects.equals(memberNickName, other.memberNickName);
	}
	@Override
	public String toString() {
		return "EventCommentViewDTO [eventId=" + eventId + ", eventCommentId=" + eventCommentId
				+ ", eventCommentDescription=" + eventCommentDescription + ", eventCommentCreateDate="
				+ eventCommentCreateDate + ", eventCommentLikeId=" + eventCommentLikeId
				+ ", eventCommentLikeCreateDate=" + eventCommentLikeCreateDate + ", memberId=" + memberId
				+ ", memberEmail=" + memberEmail + ", memberNickName=" + memberNickName + ", memberImgId=" + memberImgId
				+ ", memberImgName=" + memberImgName + ", memberImgPath=" + memberImgPath + "]";
	}
	
}
