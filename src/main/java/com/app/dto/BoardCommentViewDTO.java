package com.app.dto;

import java.util.Date;

public class BoardCommentViewDTO {

    // 댓글 정보
    private Long commentId;
    private String content;
    private Date createDate;

    // 작성자 정보
    private Long memberId;
    private String memberNickname;
    private String memberProfileImgName;
    private String memberProfileImgPath;

    // 좋아요 정보
    private int likeCount;
    private boolean likedByLoginUser;

    // 기본 생성자
    public BoardCommentViewDTO() {}

    // 전체 필드 생성자
    public BoardCommentViewDTO(Long commentId, String content, Date createDate,
                               Long memberId, String memberNickname,
                               String memberProfileImgName, String memberProfileImgPath,
                               int likeCount, boolean likedByLoginUser) {
        this.commentId = commentId;
        this.content = content;
        this.createDate = createDate;
        this.memberId = memberId;
        this.memberNickname = memberNickname;
        this.memberProfileImgName = memberProfileImgName;
        this.memberProfileImgPath = memberProfileImgPath;
        this.likeCount = likeCount;
        this.likedByLoginUser = likedByLoginUser;
    }

    // Getter & Setter

    public Long getCommentId() {
        return commentId;
    }

    public void setCommentId(Long commentId) {
        this.commentId = commentId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
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
