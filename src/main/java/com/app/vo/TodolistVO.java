package com.app.vo;

import java.util.Objects;

public class TodolistVO {
	private Long id;
	private String content;
	private Long completed;
	private Long calendarGroupId;
	
	public TodolistVO(Long id, String content, Long completed, Long calendarGroupId) {
		super();
		this.id = id;
		this.content = content;
		this.completed = completed;
		this.calendarGroupId = calendarGroupId;
	}

	public TodolistVO() {;}

	@Override
	public String toString() {
		return "TodolistVO [id=" + id + "]";
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
