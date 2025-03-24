package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class BoardCommentLikeVO {
	
	public BoardCommentLikeVO() {;}
	
	private Long id;
	private Timestamp boardCommentLikeCreateDate;
	private Long memberId;
	private Long boardCommentsId;
	
	public BoardCommentLikeVO(Long id, Timestamp boardCommentLikeCreateDate, Long memberId, Long boardCommentsId) {
		this.id = id;
		this.boardCommentLikeCreateDate = boardCommentLikeCreateDate;
		this.memberId = memberId;
		this.boardCommentsId = boardCommentsId;
	}

	@Override
	public String toString() {
		return "BoardCommentLikeVO [id=" + id + ", boardCommentLikeCreateDate=" + boardCommentLikeCreateDate
				+ ", memberId=" + memberId + ", boardCommentsId=" + boardCommentsId + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Timestamp getBoardCommentLikeCreateDate() {
		return boardCommentLikeCreateDate;
	}

	public void setBoardCommentLikeCreateDate(Timestamp boardCommentLikeCreateDate) {
		this.boardCommentLikeCreateDate = boardCommentLikeCreateDate;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getBoardCommentsId() {
		return boardCommentsId;
	}

	public void setBoardCommentsId(Long boardCommentsId) {
		this.boardCommentsId = boardCommentsId;
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
		BoardCommentLikeVO other = (BoardCommentLikeVO) obj;
		return Objects.equals(id, other.id);
	}
	
	
}
