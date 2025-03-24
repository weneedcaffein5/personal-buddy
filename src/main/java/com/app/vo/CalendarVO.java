package com.app.vo;

import java.util.Objects;

public class CalendarVO {
	private Long id;
	private String calendarTitle;
	private Long calendarGroupId;
	
	public CalendarVO() {;}

	@Override
	public String toString() {
		return "CalendarVO [id=" + id + ", calendarTitle=" + calendarTitle + ", calendarGroupId=" + calendarGroupId
				+ "]";
	}

	public CalendarVO(Long id, String calendarTitle, Long calendarGroupId) {
		super();
		this.id = id;
		this.calendarTitle = calendarTitle;
		this.calendarGroupId = calendarGroupId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCalendarTitle() {
		return calendarTitle;
	}

	public void setCalendarTitle(String calendarTitle) {
		this.calendarTitle = calendarTitle;
	}

	public Long getCalendarGroupId() {
		return calendarGroupId;
	}

	public void setCalendarGroupId(Long calendarGroupId) {
		this.calendarGroupId = calendarGroupId;
	}

	@Override
	public int hashCode() {
		return Objects.hash(calendarGroupId, id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CalendarVO other = (CalendarVO) obj;
		return Objects.equals(calendarGroupId, other.calendarGroupId) && Objects.equals(id, other.id);
	}
	
	
}
