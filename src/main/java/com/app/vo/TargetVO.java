package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class TargetVO {
	
	private Long id;
	private Timestamp targetCompleteDate;
	private String targetScheduleCategory;
	private Long memberId;
	
	public TargetVO() {;}
	public TargetVO(Long id, Timestamp targetCompleteDate, String targetScheduleCategory, Long memberId) {
		super();
		this.id = id;
		this.targetCompleteDate = targetCompleteDate;
		this.targetScheduleCategory = targetScheduleCategory;
		this.memberId = memberId;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Timestamp getTargetCompleteDate() {
		return targetCompleteDate;
	}
	public void setTargetCompleteDate(Timestamp targetCompleteDate) {
		this.targetCompleteDate = targetCompleteDate;
	}
	public String getTargetScheduleCategory() {
		return targetScheduleCategory;
	}
	public void setTargetScheduleCategory(String targetScheduleCategory) {
		this.targetScheduleCategory = targetScheduleCategory;
	}
	public Long getMemberId() {
		return memberId;
	}
	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}
	@Override
	public String toString() {
		return "TargetVO [id=" + id + ", targetCompleteDate=" + targetCompleteDate + ", targetScheduleCategory="
				+ targetScheduleCategory + ", memberId=" + memberId + "]";
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
		TargetVO other = (TargetVO) obj;
		return Objects.equals(id, other.id);
	}
	
	
}
