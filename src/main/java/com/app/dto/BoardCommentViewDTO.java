package com.app.dto;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Objects;

public class BoardCommentViewDTO {

	Long id;
	Long boardPostId;
	Long memberId;
	String memberNickname;
	String boardCommentContent;
	Timestamp boardCommentCreateDate;
	int likeCount;
	
	public BoardCommentViewDTO() {;}

	public BoardCommentViewDTO(Long id, Long boardPostId, Long memberId, String memberNickname,
			String boardCommentContent, Timestamp boardCommentCreateDate, int likeCount) {
		super();
		this.id = id;
		this.boardPostId = boardPostId;
		this.memberId = memberId;
		this.memberNickname = memberNickname;
		this.boardCommentContent = boardCommentContent;
		this.boardCommentCreateDate = boardCommentCreateDate;
		this.likeCount = likeCount;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getBoardPostId() {
		return boardPostId;
	}

	public void setBoardPostId(Long boardPostId) {
		this.boardPostId = boardPostId;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public String getBoardCommentContent() {
		return boardCommentContent;
	}

	public void setBoardCommentContent(String boardCommentContent) {
		this.boardCommentContent = boardCommentContent;
	}

	public Timestamp getBoardCommentCreateDate() {
		return boardCommentCreateDate;
	}

	public void setBoardCommentCreateDate(Timestamp boardCommentCreateDate) {
		this.boardCommentCreateDate = boardCommentCreateDate;
	}

	public int getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}

	@Override
	public String toString() {
		return "BoardCommentViewDTO [id=" + id + ", boardPostId=" + boardPostId + ", memberId=" + memberId
				+ ", memberNickname=" + memberNickname + ", boardCommentContent=" + boardCommentContent
				+ ", boardCommentCreateDate=" + boardCommentCreateDate + ", likeCount=" + likeCount + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(boardCommentContent, boardCommentCreateDate, boardPostId, id, likeCount, memberId,
				memberNickname);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BoardCommentViewDTO other = (BoardCommentViewDTO) obj;
		return Objects.equals(boardCommentContent, other.boardCommentContent)
				&& Objects.equals(boardCommentCreateDate, other.boardCommentCreateDate)
				&& Objects.equals(boardPostId, other.boardPostId) && Objects.equals(id, other.id)
				&& likeCount == other.likeCount && Objects.equals(memberId, other.memberId)
				&& Objects.equals(memberNickname, other.memberNickname);
	}
	
}
