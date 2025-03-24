package com.app.vo;

import java.util.Objects;

public class EventImgVO {
	private Long id;
	private String eventImgName;
	private String eventImgePath;
	private Long eventId;
	
	public EventImgVO() {;}

	public EventImgVO(Long id, String eventImgName, String eventImgePath, Long eventId) {
		this.id = id;
		this.eventImgName = eventImgName;
		this.eventImgePath = eventImgePath;
		this.eventId = eventId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEventImgName() {
		return eventImgName;
	}

	public void setEventImgName(String eventImgName) {
		this.eventImgName = eventImgName;
	}

	public String getEventImgePath() {
		return eventImgePath;
	}

	public void setEventImgePath(String eventImgePath) {
		this.eventImgePath = eventImgePath;
	}

	public Long getEventId() {
		return eventId;
	}

	public void setEventId(Long eventId) {
		this.eventId = eventId;
	}

	@Override
	public String toString() {
		return "eventImgVO [id=" + id + ", eventImgName=" + eventImgName + ", eventImgePath=" + eventImgePath
				+ ", eventId=" + eventId + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(eventId, eventImgName, eventImgePath, id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		EventImgVO other = (EventImgVO) obj;
		return Objects.equals(eventId, other.eventId) && Objects.equals(eventImgName, other.eventImgName)
				&& Objects.equals(eventImgePath, other.eventImgePath) && Objects.equals(id, other.id);
	}

}
