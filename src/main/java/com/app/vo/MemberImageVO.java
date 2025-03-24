package com.app.vo;

import java.util.Objects;

public class MemberImageVO {
	
	Long id;
	String memberImageName;
	String memberImagePath;
	Long memberId;
	
	public MemberImageVO() {;}
	public MemberImageVO(Long id, String memberImageName, String memberImagePath, Long memberId) {
		this.id = id;
		this.memberImageName = memberImageName;
		this.memberImagePath = memberImagePath;
		this.memberId = memberId;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getMemberImageName() {
		return memberImageName;
	}
	public void setMemberImageName(String memberImageName) {
		this.memberImageName = memberImageName;
	}
	public String getMemberImagePath() {
		return memberImagePath;
	}
	public void setMemberImagePath(String memberImagePath) {
		this.memberImagePath = memberImagePath;
	}
	public Long getMemberId() {
		return memberId;
	}
	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}
	@Override
	public String toString() {
		return "MemberImageVO [id=" + id + ", memberImageName=" + memberImageName + ", memberImagePath="
				+ memberImagePath + ", memberId=" + memberId + "]";
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
		MemberImageVO other = (MemberImageVO) obj;
		return Objects.equals(id, other.id);
	}
	
	
}
