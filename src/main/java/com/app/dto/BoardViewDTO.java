package com.app.dto;
import java.util.Date;

public class BoardViewDTO {

    // 게시글 정보
    private Long postId;
    private String title;
    private String content;
    private Date createDate;
    private Integer views;
    private String hashtag;

    // 작성자 정보
    private Long memberId;
    private String memberNickname;
    private String memberProfileImgName;
    private String memberProfileImgPath;

    // 좋아요 / 댓글 수
    private int likeCount;
    private int commentCount;

    // 기본 생성자
    public BoardViewDTO() {
    }

    // 전체 필드 생성자
    public BoardViewDTO(Long postId, String title, String content, Date createDate, Integer views, String hashtag,
                        Long memberId, String memberNickname, String memberProfileImgName, String memberProfileImgPath,
                        int likeCount, int commentCount) {
        this.postId = postId;
        this.title = title;
        this.content = content;
        this.createDate = createDate;
        this.views = views;
        this.hashtag = hashtag;
        this.memberId = memberId;
        this.memberNickname = memberNickname;
        this.memberProfileImgName = memberProfileImgName;
        this.memberProfileImgPath = memberProfileImgPath;
        this.likeCount = likeCount;
        this.commentCount = commentCount;
    }

    // Getter & Setter

    public Long getPostId() {
        return postId;
    }

    public void setPostId(Long postId) {
        this.postId = postId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public Integer getViews() {
        return views;
    }

    public void setViews(Integer views) {
        this.views = views;
    }

    public String getHashtag() {
        return hashtag;
    }

    public void setHashtag(String hashtag) {
        this.hashtag = hashtag;
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
}