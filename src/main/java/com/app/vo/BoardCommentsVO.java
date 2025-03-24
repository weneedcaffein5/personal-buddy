package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class BoardCommentsVO {
	
	public BoardCommentsVO() {;}
	
	private Long id;
	private String boardContent;
	private Timestamp boardCreateDate;
	private Long memberId;
	private Long boardPostId;
	
	public BoardCommentsVO(Long id, String boardContent, Timestamp boardCreateDate, Long memberId, Long boardPostId) {
		this.id = id;
		this.boardContent = boardContent;
		this.boardCreateDate = boardCreateDate;
		this.memberId = memberId;
		this.boardPostId = boardPostId;
	}

	@Override
	public String toString() {
		return "BoardCommentsVO [id=" + id + ", boardContent=" + boardContent + ", boardCreateDate=" + boardCreateDate
				+ ", memberId=" + memberId + ", boardPostId=" + boardPostId + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public Timestamp getBoardCreateDate() {
		return boardCreateDate;
	}

	public void setBoardCreateDate(Timestamp boardCreateDate) {
		this.boardCreateDate = boardCreateDate;
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
		BoardCommentsVO other = (BoardCommentsVO) obj;
		return Objects.equals(id, other.id);
	}
	
	
}
