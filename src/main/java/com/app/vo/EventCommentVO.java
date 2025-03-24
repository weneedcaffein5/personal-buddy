package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class EventCommentVO {
	private Long id;
	private String eventCommentDescription;
	private Timestamp eventCommentCreateDate;
	private Long eventId;
	private Long memberId;
	
	public EventCommentVO() {;}

	public EventCommentVO(Long id, String eventCommentDescription, Timestamp eventCommentCreateDate, Long eventId,
			Long memberId) {
		super();
		this.id = id;
		this.eventCommentDescription = eventCommentDescription;
		this.eventCommentCreateDate = eventCommentCreateDate;
		this.eventId = eventId;
		this.memberId = memberId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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
	public String toString() {
		return "eventCommentVO [id=" + id + ", eventCommentDescription=" + eventCommentDescription
				+ ", eventCommentCreateDate=" + eventCommentCreateDate + ", eventId=" + eventId + ", memberId="
				+ memberId + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(eventCommentCreateDate, eventCommentDescription, eventId, id, memberId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		EventCommentVO other = (EventCommentVO) obj;
		return Objects.equals(eventCommentCreateDate, other.eventCommentCreateDate)
				&& Objects.equals(eventCommentDescription, other.eventCommentDescription)
				&& Objects.equals(eventId, other.eventId) && Objects.equals(id, other.id)
				&& Objects.equals(memberId, other.memberId);
	}
	
}
