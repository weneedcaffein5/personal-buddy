package com.app.vo;

import java.util.Objects;

public class TodolistVO {
	private Long id;
	private String content;
	private Long completed;
	private Long calendarGroupId;
	
	public TodolistVO() {;}
	public TodolistVO(Long id, String content, Long completed, Long calendarGroupId) {
		this.id = id;
		this.content = content;
		this.completed = completed;
		this.calendarGroupId = calendarGroupId;
	}


	@Override
	public String toString() {
		return "TodolistVO [id=" + id + "]";
	}

	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Long getCompleted() {
		return completed;
	}
	public void setCompleted(Long completed) {
		this.completed = completed;
	}
	public Long getCalendarGroupId() {
		return calendarGroupId;
	}
	public void setCalendarGroupId(Long calendarGroupId) {
		this.calendarGroupId = calendarGroupId;
	}
	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		TodolistVO other = (TodolistVO) obj;
		return Objects.equals(id, other.id);
	}

	
	
	
}
