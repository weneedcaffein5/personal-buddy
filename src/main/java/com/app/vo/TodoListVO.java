package com.app.vo;

import java.util.Objects;

public class TodoListVO {
	private Long id;
	private String todoListContent;
	private int todoListCompleted;
	private Long calendarGroupId;

	public TodoListVO() {;}
	public TodoListVO(Long id, String todoListContent, int todoListCompleted, Long todoListCalendarGroupId) {
		this.id = id;
		this.todoListContent = todoListContent;
		this.todoListCompleted = todoListCompleted;
		this.calendarGroupId = todoListCalendarGroupId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTodoListContent() {
		return todoListContent;
	}

	public void setTodoListContent(String todoListContent) {
		this.todoListContent = todoListContent;
	}

	public int getTodoListCompleted() {
		return todoListCompleted;
	}

	public void setTodoListCompleted(int todoListCompleted) {
		this.todoListCompleted = todoListCompleted;
	}

	public Long getCalendarGroupId() {
		return calendarGroupId;
	}

	public void setCalendarGroupId(Long todoListCalendarGroupId) {
		this.calendarGroupId = todoListCalendarGroupId;
	}

	@Override
	public String toString() {
		return "TodolistVO [id=" + id + ", todoListContent=" + todoListContent + ", todoListCompleted="
				+ todoListCompleted + ", calendarGroupId=" + calendarGroupId + "]";
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
		TodoListVO other = (TodoListVO) obj;
		return Objects.equals(id, other.id);
	}
	
}
