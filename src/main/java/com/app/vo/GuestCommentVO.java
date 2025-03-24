package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class GuestCommentVO {

	private Long id;
	private Timestamp guestcommentCreateDate;
	private String guestcommentDescription;
	private Long memberId;
	
	public GuestCommentVO() {;}
	public GuestCommentVO(Long id, Timestamp guestcommentCreateDate, String guestcommentDescription, Long memberId) {
		this.id = id;
		this.guestcommentCreateDate = guestcommentCreateDate;
		this.guestcommentDescription = guestcommentDescription;
		this.memberId = memberId;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Timestamp getGuestcommentCreateDate() {
		return guestcommentCreateDate;
	}
	public void setGuestcommentCreateDate(Timestamp guestcommentCreateDate) {
		this.guestcommentCreateDate = guestcommentCreateDate;
	}
	public String getGuestcommentDescription() {
		return guestcommentDescription;
	}
	public void setGuestcommentDescription(String guestcommentDescription) {
		this.guestcommentDescription = guestcommentDescription;
	}
	public Long getMemberId() {
		return memberId;
	}
	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}
	@Override
	public String toString() {
		return "GuestCommentVO [id=" + id + ", guestcommentCreateDate=" + guestcommentCreateDate
				+ ", guestcommentDescription=" + guestcommentDescription + ", memberId=" + memberId + "]";
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
		GuestCommentVO other = (GuestCommentVO) obj;
		return Objects.equals(id, other.id);
	}
	
	
}
