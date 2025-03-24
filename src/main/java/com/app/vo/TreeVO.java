package com.app.vo;

import java.util.Objects;

public class TreeVO {
	private Long id;
	private Long memberId;
	
	public TreeVO() {;}
	
	public TreeVO(Long id, Long memberId) {
		super();
		this.id = id;
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "TreeVO [id=" + id + "]";
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
		TreeVO other = (TreeVO) obj;
		return Objects.equals(id, other.id);
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
	
}
