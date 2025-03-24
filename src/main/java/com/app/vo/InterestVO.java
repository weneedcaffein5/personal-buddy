package com.app.vo;

import java.util.Objects;

public class InterestVO {
	
	private Long id;
	private String interestBig;
	private String interestSmall;
	private Long memberId;
	
	public InterestVO() {;}

	public InterestVO(Long id, String interestBig, String interestSmall, Long memberId) {
		this.id = id;
		this.interestBig = interestBig;
		this.interestSmall = interestSmall;
		this.memberId = memberId;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, interestBig, interestSmall, memberId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		InterestVO other = (InterestVO) obj;
		return Objects.equals(id, other.id) && Objects.equals(interestBig, other.interestBig)
				&& Objects.equals(interestSmall, other.interestSmall) && Objects.equals(memberId, other.memberId);
	}

	@Override
	public String toString() {
		return "InterestVO [id=" + id + ", interestBig=" + interestBig + ", interestSmall=" + interestSmall
				+ ", memberId=" + memberId + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getInterestBig() {
		return interestBig;
	}

	public void setInterestBig(String interestBig) {
		this.interestBig = interestBig;
	}

	public String getInterestSmall() {
		return interestSmall;
	}

	public void setInterestSmall(String interestSmall) {
		this.interestSmall = interestSmall;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

}
