package com.app.dto;

import java.sql.Timestamp;
import java.util.Objects;

public class EventViewDTO {
	private Long id;
	private String eventTitle;
	private Timestamp eventStartDate;
	private Timestamp eventEndDate;
	private String eventImgName;
	private String eventImgPath;
	
	public EventViewDTO() {;}

	public EventViewDTO(Long id, String eventTitle, Timestamp eventStartDate, Timestamp eventEndDate,
			String eventImgName, String eventImgPath) {
		super();
		this.id = id;
		this.eventTitle = eventTitle;
		this.eventStartDate = eventStartDate;
		this.eventEndDate = eventEndDate;
		this.eventImgName = eventImgName;
		this.eventImgPath = eventImgPath;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEventTitle() {
		return eventTitle;
	}

	public void setEventTitle(String eventTitle) {
		this.eventTitle = eventTitle;
	}

	public Timestamp getEventStartDate() {
		return eventStartDate;
	}

	public void setEventStartDate(Timestamp eventStartDate) {
		this.eventStartDate = eventStartDate;
	}

	public Timestamp getEventEndDate() {
		return eventEndDate;
	}

	public void setEventEndDate(Timestamp eventEndDate) {
		this.eventEndDate = eventEndDate;
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

	@Override
	public String toString() {
		return "EventViewDTO [id=" + id + ", eventTitle=" + eventTitle + ", eventStartDate=" + eventStartDate
				+ ", eventEndDate=" + eventEndDate + ", eventImgName=" + eventImgName + ", eventImgPath=" + eventImgPath
				+ "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(eventEndDate, eventImgName, eventImgPath, eventStartDate, eventTitle, id);
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
		return Objects.equals(eventEndDate, other.eventEndDate) && Objects.equals(eventImgName, other.eventImgName)
				&& Objects.equals(eventImgPath, other.eventImgPath)
				&& Objects.equals(eventStartDate, other.eventStartDate) && Objects.equals(eventTitle, other.eventTitle)
				&& Objects.equals(id, other.id);
	}
	
}

