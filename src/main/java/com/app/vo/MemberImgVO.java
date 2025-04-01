package com.app.vo;

import java.util.Objects;

public class MemberImgVO {
	
	private Long id;
	private String memberImgName;
	private String memberImgPath;
	private Long memberId;
	
	public MemberImgVO() {;}

	public MemberImgVO(Long id, String memberImgName, String memberImgPath, Long memberId) {
		this.id = id;
		this.memberImgName = memberImgName;
		this.memberImgPath = memberImgPath;
		this.memberId = memberId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMemberImgName() {
		return memberImgName;
	}

	public void setMemberImgName(String memberImgName) {
		this.memberImgName = memberImgName;
	}

	public String getMemberImgPath() {
		return memberImgPath;
	}

	public void setMemberImgPath(String memberImgPath) {
		this.memberImgPath = memberImgPath;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "MemberImgVO [id=" + id + ", memberImgName=" + memberImgName + ", memberImgPath=" + memberImgPath
				+ ", memberId=" + memberId + "]";
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
		MemberImgVO other = (MemberImgVO) obj;
		return Objects.equals(id, other.id);
	}
	
	
}
