package com.app.vo;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Objects;

public class ScheduleGroupVO {
	private Long id;
	
	public ScheduleGroupVO() {;}
	
	
	@Override
	public String toString() {
		return "ScheduleGroupVO [id=" + id + "]";
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

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
		
}

