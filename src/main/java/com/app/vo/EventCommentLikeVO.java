package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class EventCommentLikeVO {
	private Long id;
	private Timestamp eventCommentLikeCreateDate;
	private Long eventCommentId;
	private Long memberId;
	
	public EventCommentLikeVO() {;}

	public EventCommentLikeVO(Long id, Timestamp eventCommentLikeCreateDate, Long eventCommentId, Long memberId) {
		this.id = id;
		this.eventCommentLikeCreateDate = eventCommentLikeCreateDate;
		this.eventCommentId = eventCommentId;
		this.memberId = memberId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Timestamp getEventCommentLikeCreateDate() {
		return eventCommentLikeCreateDate;
	}

	public void setEventCommentLikeCreateDate(Timestamp eventCommentLikeCreateDate) {
		this.eventCommentLikeCreateDate = eventCommentLikeCreateDate;
	}

	public Long getEventCommentId() {
		return eventCommentId;
	}

	public void setEventCommentId(Long eventCommentId) {
		this.eventCommentId = eventCommentId;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "eventCommentLikeVO [id=" + id + ", eventCommentLikeCreateDate=" + eventCommentLikeCreateDate
				+ ", eventCommentId=" + eventCommentId + ", memberId=" + memberId + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(eventCommentId, eventCommentLikeCreateDate, id, memberId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		EventCommentLikeVO other = (EventCommentLikeVO) obj;
		return Objects.equals(eventCommentId, other.eventCommentId)
				&& Objects.equals(eventCommentLikeCreateDate, other.eventCommentLikeCreateDate)
				&& Objects.equals(id, other.id) && Objects.equals(memberId, other.memberId);
	}

}
