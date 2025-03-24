package com.app.vo;

import java.util.Objects;

public class ScheduleGroupVO {
	private Long id;
	private Long userGroupId;
	
	public ScheduleGroupVO() {;}

	public ScheduleGroupVO(Long id, Long userGroupId) {
		this.id = id;
		this.userGroupId = userGroupId;
	}

	@Override
	public String toString() {
		return "ScheduleGroupVO [id=" + id + ", userGroupId=" + userGroupId + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getUserGroupId() {
		return userGroupId;
	}

	public void setUserGroupId(Long userGroupId) {
		this.userGroupId = userGroupId;
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
		ScheduleGroupVO other = (ScheduleGroupVO) obj;
		return Objects.equals(id, other.id);
	}
	
	
}

