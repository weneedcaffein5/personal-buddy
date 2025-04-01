package com.app.dto;

public class TreeViewDTO {
    private Long treeId;
    private Long memberId;
    private int positionX;
    private int positionY;
    private int apply;
    private Long itemId;

    // 👉 이미지 경로용 필드 추가
    private String itemImgPath;
    private String itemImgName;

    // --- Getter & Setter ---
    public Long getTreeId() {
        return treeId;
    }

    public void setTreeId(Long treeId) {
        this.treeId = treeId;
    }

    public Long getMemberId() {
        return memberId;
    }

    public void setMemberId(Long memberId) {
        this.memberId = memberId;
    }

    public int getPositionX() {
        return positionX;
    }

    public void setPositionX(int positionX) {
        this.positionX = positionX;
    }

    public int getPositionY() {
        return positionY;
    }

    public void setPositionY(int positionY) {
        this.positionY = positionY;
    }

    public int getApply() {
        return apply;
    }

    public void setApply(int apply) {
        this.apply = apply;
    }

    public Long getItemId() {
        return itemId;
    }

    public void setItemId(Long itemId) {
        this.itemId = itemId;
    }

    public String getItemImgPath() {
        return itemImgPath;
    }

    public void setItemImgPath(String itemImgPath) {
        this.itemImgPath = itemImgPath;
    }

    public String getItemImgName() {
        return itemImgName;
    }

    public void setItemImgName(String itemImgName) {
        this.itemImgName = itemImgName;
    }
}