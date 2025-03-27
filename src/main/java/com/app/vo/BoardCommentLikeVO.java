package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class BoardCommentLikeVO {
	
	public BoardCommentLikeVO() {;}
	
	private Long id;
	private Timestamp boardCommentLikeCreateDate;
	private Long memberId;
	private Long boardCommentId;
	
	public BoardCommentLikeVO(Long id, Timestamp boardCommentLikeCreateDate, Long memberId, Long boardCommentId) {
		super();
		this.id = id;
		this.boardCommentLikeCreateDate = boardCommentLikeCreateDate;
		this.memberId = memberId;
		this.boardCommentId = boardCommentId;
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

	public Long getBoardCommentId() {
		return boardCommentId;
	}

	public void setBoardCommentId(Long boardCommentId) {
		this.boardCommentId = boardCommentId;
	}

	@Override
	public String toString() {
		return "BoardCommentLikeVO [id=" + id + ", boardCommentLikeCreateDate=" + boardCommentLikeCreateDate
				+ ", memberId=" + memberId + ", boardCommentId=" + boardCommentId + "]";
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
