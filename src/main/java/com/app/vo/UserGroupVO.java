package com.app.vo;

import java.util.Objects;

public class UserGroupVO {
	private Long id;
	private Long memberId;
	
	public UserGroupVO() {;}

	@Override
	public String toString() {
		return "UserGroupVO [id=" + id + ", memberId=" + memberId + "]";
	}

	public UserGroupVO(Long id, Long memberId) {
		super();
		this.id = id;
		this.memberId = memberId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, memberId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserGroupVO other = (UserGroupVO) obj;
		return Objects.equals(id, other.id) && Objects.equals(memberId, other.memberId);
	}
	
	
}
