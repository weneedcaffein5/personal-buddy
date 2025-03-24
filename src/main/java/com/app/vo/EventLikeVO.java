package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class EventLikeVO {
	
	private Long id;
	private Timestamp eventLikeCreateTime;
	private Long eventId;
	private Long memberId;
	
	public EventLikeVO() {;}

	public EventLikeVO(Long id, Timestamp eventLikeCreateTime, Long eventId, Long memberId) {
		this.id = id;
		this.eventLikeCreateTime = eventLikeCreateTime;
		this.eventId = eventId;
		this.memberId = memberId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Timestamp getEventLikeCreateTime() {
		return eventLikeCreateTime;
	}

	public void setEventLikeCreateTime(Timestamp eventLikeCreateTime) {
		this.eventLikeCreateTime = eventLikeCreateTime;
	}

	public Long getEventId() {
		return eventId;
	}

	public void setEventId(Long eventId) {
		this.eventId = eventId;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	@Override
	public int hashCode() {
		return Objects.hash(eventId, eventLikeCreateTime, id, memberId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		EventLikeVO other = (EventLikeVO) obj;
		return Objects.equals(eventId, other.eventId) && Objects.equals(eventLikeCreateTime, other.eventLikeCreateTime)
				&& Objects.equals(id, other.id) && Objects.equals(memberId, other.memberId);
	}

	@Override
	public String toString() {
		return "eventLikeVO [id=" + id + ", eventLikeCreateTime=" + eventLikeCreateTime + ", eventId=" + eventId
				+ ", memberId=" + memberId + "]";
	}
	
}
