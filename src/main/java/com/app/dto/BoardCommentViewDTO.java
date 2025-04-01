package com.app.dto;

import java.sql.Timestamp;
import java.util.Date;

public class BoardCommentViewDTO {

    // 댓글 정보
    private Long commentId;
    private String boardCommentContent;
    private Timestamp boardCommentCreateDate;

    // 작성자 정보
    private Long memberId;
    private String memberNickname;
    private String memberProfileImgName;
    private String memberProfileImgPath;

    // 좋아요 정보
    private int likeCount;
    private boolean likedByLoginUser;

    // 기본 생성자
    public BoardCommentViewDTO() {;}

    // 전체 필드 생성자
    public BoardCommentViewDTO(Long commentId, String boardCommentContent, Timestamp boardCommentCreateDate, Long memberId,
			String memberNickname, String memberProfileImgName, String memberProfileImgPath, int likeCount,
			boolean likedByLoginUser) {
		this.commentId = commentId;
		this.boardCommentContent = boardCommentContent;
		this.boardCommentCreateDate = boardCommentCreateDate;
		this.memberId = memberId;
		this.memberNickname = memberNickname;
		this.memberProfileImgName = memberProfileImgName;
		this.memberProfileImgPath = memberProfileImgPath;
		this.likeCount = likeCount;
		this.likedByLoginUser = likedByLoginUser;
	}

	@Override
	public String toString() {
		return "BoardCommentViewDTO [commentId=" + commentId + ", boardCommentContent=" + boardCommentContent
				+ ", boardCommentCreateDate=" + boardCommentCreateDate + ", memberId=" + memberId + ", memberNickname="
				+ memberNickname + ", memberProfileImgName=" + memberProfileImgName + ", memberProfileImgPath="
				+ memberProfileImgPath + ", likeCount=" + likeCount + ", likedByLoginUser=" + likedByLoginUser + "]";
	}

	public Long getCommentId() {
		return commentId;
	}

	public void setCommentId(Long commentId) {
		this.commentId = commentId;
	}

	public String getBoardCommentContent() {
		return boardCommentContent;
	}

	public void setBoardCommentContent(String boardCommentContent) {
		this.boardCommentContent = boardCommentContent;
	}

	public Date getBoardCommentCreateDate() {
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

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public String getMemberProfileImgName() {
		return memberProfileImgName;
	}

	public void setMemberProfileImgName(String memberProfileImgName) {
		this.memberProfileImgName = memberProfileImgName;
	}

	public String getMemberProfileImgPath() {
		return memberProfileImgPath;
	}

	public void setMemberProfileImgPath(String memberProfileImgPath) {
		this.memberProfileImgPath = memberProfileImgPath;
	}

	public int getLikeCount() {
		return likeCount;
	}

	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}

	public boolean isLikedByLoginUser() {
		return likedByLoginUser;
	}

	public void setLikedByLoginUser(boolean likedByLoginUser) {
		this.likedByLoginUser = likedByLoginUser;
	}
    
    

}
