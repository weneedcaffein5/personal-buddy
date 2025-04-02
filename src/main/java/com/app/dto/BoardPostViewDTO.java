package com.app.dto;

import java.sql.Timestamp;
import java.util.Objects;

public class BoardPostViewDTO {
	private Long id;
	private String boardTitle;
	private String board_content;
	private Timestamp boardContentCreateDate;
	private Long memberId;
	private String memberNickname;
	private int boardContentViews;
	private int likeCount;
	private int commentCount;
	
	public BoardPostViewDTO() {;}

	public BoardPostViewDTO(Long id, String boardTitle, String board_content, Timestamp boardContentCreateDate,
			Long memberId, String memberNickname, int boardContentViews, int likeCount, int commentCount) {
		super();
		this.id = id;
		this.boardTitle = boardTitle;
		this.board_content = board_content;
		this.boardContentCreateDate = boardContentCreateDate;
		this.memberId = memberId;
		this.memberNickname = memberNickname;
		this.boardContentViews = boardContentViews;
		this.likeCount = likeCount;
		this.commentCount = commentCount;
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

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public Timestamp getBoardContentCreateDate() {
		return boardContentCreateDate;
	}

	public void setBoardContentCreateDate(Timestamp boardContentCreateDate) {
		this.boardContentCreateDate = boardContentCreateDate;
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

	public int getBoardContentViews() {
		return boardContentViews;
	}

	public void setBoardContentViews(int boardContentViews) {
		this.boardContentViews = boardContentViews;
	}

	public int getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}

	public int getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}

	@Override
	public String toString() {
		return "BoradPostViewDTO [id=" + id + ", boardTitle=" + boardTitle + ", board_content=" + board_content
				+ ", boardContentCreateDate=" + boardContentCreateDate + ", memberId=" + memberId + ", memberNickname="
				+ memberNickname + ", boardContentViews=" + boardContentViews + ", likeCount=" + likeCount
				+ ", commentCount=" + commentCount + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(boardContentCreateDate, boardContentViews, boardTitle, board_content, commentCount, id,
				likeCount, memberId, memberNickname);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BoardPostViewDTO other = (BoardPostViewDTO) obj;
		return Objects.equals(boardContentCreateDate, other.boardContentCreateDate)
				&& boardContentViews == other.boardContentViews && Objects.equals(boardTitle, other.boardTitle)
				&& Objects.equals(board_content, other.board_content) && commentCount == other.commentCount
				&& Objects.equals(id, other.id) && likeCount == other.likeCount
				&& Objects.equals(memberId, other.memberId) && Objects.equals(memberNickname, other.memberNickname);
	}
	
}