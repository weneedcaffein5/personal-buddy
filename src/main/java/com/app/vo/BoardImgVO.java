package com.app.vo;

import java.util.Objects;

public class BoardImgVO {
	
	private Long id;
	private String boardImgPath;
	private String boardImgName;
	private Long boardPostId;
	
	public BoardImgVO() {;}

	public BoardImgVO(Long id, String boardImgPath, String boardImgName, Long boardPostId) {
		this.id = id;
		this.boardImgPath = boardImgPath;
		this.boardImgName = boardImgName;
		this.boardPostId = boardPostId;
	}

	@Override
	public String toString() {
		return "BoardImgVO [id=" + id + ", boardImgPath=" + boardImgPath + ", boardImgName=" + boardImgName
				+ ", boardPostId=" + boardPostId + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getBoardImgPath() {
		return boardImgPath;
	}

	public void setBoardImgPath(String boardImgPath) {
		this.boardImgPath = boardImgPath;
	}

	public String getBoardImgName() {
		return boardImgName;
	}

	public void setBoardImgName(String boardImgName) {
		this.boardImgName = boardImgName;
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
		BoardImgVO other = (BoardImgVO) obj;
		return Objects.equals(id, other.id);
	}

	
}
