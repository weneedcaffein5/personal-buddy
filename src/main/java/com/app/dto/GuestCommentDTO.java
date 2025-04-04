package com.app.dto;

public class GuestCommentDTO {
	private Long memberId;
	private String description;
	
	public GuestCommentDTO() {;}

	public GuestCommentDTO(Long memberId, String description) {
		this.memberId = memberId;
		this.description = description;
	}

	@Override
	public String toString() {
		return "GuestCommentDTO [memberId=" + memberId + ", description=" + description + "]";
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
}
