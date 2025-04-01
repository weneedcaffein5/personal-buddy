package com.app.dto;
import java.util.Date;

public class BoardViewDTO {

    // 게시글 정보
    private Long postId;
    private String boardTitle;
    private String boardContent;
    private Date boardContentCreateDate;
    private int boardContentViews;
    private String boardHashtag;

    // 작성자 정보
    private Long memberId;
    private String memberNickname;
    private String memberProfileImgName;
    private String memberProfileImgPath;

    // 좋아요 / 댓글 수
    private int likeCount;
    private int commentCount;
    
    private String boardImgPath;
    private String boardImgName;

    // 기본 생성자
    public BoardViewDTO() {;}

	public BoardViewDTO(Long postId, String boardTitle, String boardContent, Date boardContentCreateDate,
			int boardContentViews, String boardHashtag, Long memberId, String memberNickname,
			String memberProfileImgName, String memberProfileImgPath, int likeCount, int commentCount,
			String boardImgPath, String boardImgName) {
		this.postId = postId;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardContentCreateDate = boardContentCreateDate;
		this.boardContentViews = boardContentViews;
		this.boardHashtag = boardHashtag;
		this.memberId = memberId;
		this.memberNickname = memberNickname;
		this.memberProfileImgName = memberProfileImgName;
		this.memberProfileImgPath = memberProfileImgPath;
		this.likeCount = likeCount;
		this.commentCount = commentCount;
		this.boardImgPath = boardImgPath;
		this.boardImgName = boardImgName;
	}

	@Override
	public String toString() {
		return "BoardViewDTO [postId=" + postId + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", boardContentCreateDate=" + boardContentCreateDate + ", boardContentViews=" + boardContentViews
				+ ", boardHashtag=" + boardHashtag + ", memberId=" + memberId + ", memberNickname=" + memberNickname
				+ ", memberProfileImgName=" + memberProfileImgName + ", memberProfileImgPath=" + memberProfileImgPath
				+ ", likeCount=" + likeCount + ", commentCount=" + commentCount + ", boardImgPath=" + boardImgPath
				+ ", boardImgName=" + boardImgName + "]";
	}

	public Long getPostId() {
		return postId;
	}

	public void setPostId(Long postId) {
		this.postId = postId;
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

	public Date getBoardContentCreateDate() {
		return boardContentCreateDate;
	}

	public void setBoardContentCreateDate(Date boardContentCreateDate) {
		this.boardContentCreateDate = boardContentCreateDate;
	}

	public int getBoardContentViews() {
		return boardContentViews;
	}

	public void setBoardContentViews(int boardContentViews) {
		this.boardContentViews = boardContentViews;
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

	public int getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
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
	
	
    
}