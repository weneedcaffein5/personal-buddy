package com.app.vo;

import java.util.Objects;

public class BoardPostVO {
	
	private Long id;
	private String boardTitle;
	private String boardContent;
	private String boardContentViews;
	private String boardContentCreateDate;
	private String boardContentUpdateDate;
	private String boardHashtag;
	private Long memberId;
	
	public BoardPostVO() {;}

	public BoardPostVO(Long id, String boardTitle, String boardContent, String boardContentViews,
			String boardContentCreateDate, String boardContentUpdateDate, String boardHashtag, Long memberId) {
		this.id = id;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardContentViews = boardContentViews;
		this.boardContentCreateDate = boardContentCreateDate;
		this.boardContentUpdateDate = boardContentUpdateDate;
		this.boardHashtag = boardHashtag;
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "BoardPostVO [id=" + id + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", boardContentViews=" + boardContentViews + ", boardContentCreateDate=" + boardContentCreateDate
				+ ", boardContentUpdateDate=" + boardContentUpdateDate + ", boardHashtag=" + boardHashtag
				+ ", memberId=" + memberId + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardContentViews() {
		return boardContentViews;
	}

	public void setBoardContentViews(String boardContentViews) {
		this.boardContentViews = boardContentViews;
	}

	public String getBoardContentCreateDate() {
		return boardContentCreateDate;
	}

	public void setBoardContentCreateDate(String boardContentCreateDate) {
		this.boardContentCreateDate = boardContentCreateDate;
	}

	public String getBoardContentUpdateDate() {
		return boardContentUpdateDate;
	}

	public void setBoardContentUpdateDate(String boardContentUpdateDate) {
		this.boardContentUpdateDate = boardContentUpdateDate;
	}

	public String getBoardHashtag() {
		return boardHashtag;
	}

	public void setBoardHashtag(String boardHashtag) {
		this.boardHashtag = boardHashtag;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
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
		BoardPostVO other = (BoardPostVO) obj;
		return Objects.equals(id, other.id);
	}
	
	
	
}
