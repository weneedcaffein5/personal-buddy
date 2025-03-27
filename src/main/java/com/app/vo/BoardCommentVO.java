package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class BoardCommentVO {
	
	private Long id;
	private String boardCommentContent;
	private Timestamp boardCommentCreateDate;
	private Long memberId;
	private Long boardPostId;
	
	public BoardCommentVO() {;}

	public BoardCommentVO(Long id, String boardCommentContent, Timestamp boardCommentCreateDate, Long memberId,
			Long boardPostId) {
		this.id = id;
		this.boardCommentContent = boardCommentContent;
		this.boardCommentCreateDate = boardCommentCreateDate;
		this.memberId = memberId;
		this.boardPostId = boardPostId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getBoardPostId() {
		return boardPostId;
	}

	public void setBoardPostId(Long boardPostId) {
		this.boardPostId = boardPostId;
	}
	
	@Override
	public String toString() {
		return "BoardCommentVO [id=" + id + ", boardCommentContent=" + boardCommentContent + ", boardCommentCreateDate="
				+ boardCommentCreateDate + ", memberId=" + memberId + ", boardPostId=" + boardPostId + "]";
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
		BoardCommentVO other = (BoardCommentVO) obj;
		return Objects.equals(id, other.id);
	}
	
}
