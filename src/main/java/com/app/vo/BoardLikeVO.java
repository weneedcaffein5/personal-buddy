package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class BoardLikeVO {
	
	private Long id;
	private Timestamp boardLikeCreateDate;
	private Long memberId;
	private Long boardPostId;
	
	public BoardLikeVO() {;}

	public BoardLikeVO(Long id, Timestamp boardLikeCreateDate, Long memberId, Long boardPostId) {
		this.id = id;
		this.boardLikeCreateDate = boardLikeCreateDate;
		this.memberId = memberId;
		this.boardPostId = boardPostId;
	}

	@Override
	public String toString() {
		return "BoardLikeVO [id=" + id + ", boardLikeCreateDate=" + boardLikeCreateDate + ", memberId=" + memberId
				+ ", boardPostId=" + boardPostId + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Timestamp getBoardLikeCreateDate() {
		return boardLikeCreateDate;
	}

	public void setBoardLikeCreateDate(Timestamp boardLikeCreateDate) {
		this.boardLikeCreateDate = boardLikeCreateDate;
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
		BoardLikeVO other = (BoardLikeVO) obj;
		return Objects.equals(id, other.id);
	}
	
	
	
}
