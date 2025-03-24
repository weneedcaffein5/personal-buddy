package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class MemberPointLogVO {
	
	private Long id;
	private int memberPointVariance;
	private String memberPointReason;
	private Timestamp memberPointTime;
	private Long memberId;
	
	public MemberPointLogVO() {;}

	public MemberPointLogVO(Long id, int memberPointVariance, String memberPointReason, Timestamp memberPointTime,
			Long memberId) {
		this.id = id;
		this.memberPointVariance = memberPointVariance;
		this.memberPointReason = memberPointReason;
		this.memberPointTime = memberPointTime;
		this.memberId = memberId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getMemberPointVariance() {
		return memberPointVariance;
	}

	public void setMemberPointVariance(int memberPointVariance) {
		this.memberPointVariance = memberPointVariance;
	}

	public String getMemberPointReason() {
		return memberPointReason;
	}

	public void setMemberPointReason(String memberPointReason) {
		this.memberPointReason = memberPointReason;
	}

	public Timestamp getMemberPointTime() {
		return memberPointTime;
	}

	public void setMemberPointTime(Timestamp memberPointTime) {
		this.memberPointTime = memberPointTime;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "memberPointLogVO [id=" + id + ", memberPointVariance=" + memberPointVariance + ", memberPointReason="
				+ memberPointReason + ", memberPointTime=" + memberPointTime + ", memberId=" + memberId + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, memberId, memberPointReason, memberPointTime, memberPointVariance);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberPointLogVO other = (MemberPointLogVO) obj;
		return Objects.equals(id, other.id) && Objects.equals(memberId, other.memberId)
				&& Objects.equals(memberPointReason, other.memberPointReason)
				&& Objects.equals(memberPointTime, other.memberPointTime)
				&& memberPointVariance == other.memberPointVariance;
	}
	
}
