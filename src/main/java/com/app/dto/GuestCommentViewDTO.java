package com.app.dto;

import java.util.Date;

public class GuestCommentViewDTO {
    private Long guestCommentId;
    private String description;
    private Date createDate;

    private Long memberId;
    private String memberNickname;

    private String memberProfileImgName;
    private String memberProfileImgPath;

    // 기본 생성자
    public GuestCommentViewDTO() {}

    // 전체 필드 생성자
    public GuestCommentViewDTO(Long guestCommentId, String description, Date createDate,
                                Long memberId, String memberNickname,
                                String memberProfileImgName, String memberProfileImgPath) {
        this.guestCommentId = guestCommentId;
        this.description = description;
        this.createDate = createDate;
        this.memberId = memberId;
        this.memberNickname = memberNickname;
        this.memberProfileImgName = memberProfileImgName;
        this.memberProfileImgPath = memberProfileImgPath;
    }

    // Getter & Setter

    public Long getGuestCommentId() {
        return guestCommentId;
    }

    public void setGuestCommentId(Long guestCommentId) {
        this.guestCommentId = guestCommentId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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
}
