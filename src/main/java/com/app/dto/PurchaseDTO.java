package com.app.dto;

import java.sql.Timestamp;

public class PurchaseDTO {
	private Long memberId;
    private Long itemId;
    private Long treeId;
    private int cartItemCount;
    private int itemCount;
    private String itemName;
    private int itemPrice;
    private int positionX;
    private int positionY;
    private String memberNickName;
    private int memberPoint;
    private int pointUsed;
    private String pointReason;
    
    public PurchaseDTO() {;}

	public PurchaseDTO(Long memberId, Long itemId, Long treeId, int cartItemCount, int itemCount, String itemName,
			int itemPrice, int positionX, int positionY, String memberNickName, int memberPoint, int pointUsed,
			String pointReason) {
		super();
		this.memberId = memberId;
		this.itemId = itemId;
		this.treeId = treeId;
		this.cartItemCount = cartItemCount;
		this.itemCount = itemCount;
		this.itemName = itemName;
		this.itemPrice = itemPrice;
		this.positionX = positionX;
		this.positionY = positionY;
		this.memberNickName = memberNickName;
		this.memberPoint = memberPoint;
		this.pointUsed = pointUsed;
		this.pointReason = pointReason;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getItemId() {
		return itemId;
	}

	public void setItemId(Long itemId) {
		this.itemId = itemId;
	}

	public Long getTreeId() {
		return treeId;
	}

	public void setTreeId(Long treeId) {
		this.treeId = treeId;
	}

	public int getCartItemCount() {
		return cartItemCount;
	}

	public void setCartItemCount(int cartItemCount) {
		this.cartItemCount = cartItemCount;
	}

	public int getItemCount() {
		return itemCount;
	}

	public void setItemCount(int itemCount) {
		this.itemCount = itemCount;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public int getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
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

	public String getMemberNickName() {
		return memberNickName;
	}

	public void setMemberNickName(String memberNickName) {
		this.memberNickName = memberNickName;
	}

	public int getMemberPoint() {
		return memberPoint;
	}

	public void setMemberPoint(int memberPoint) {
		this.memberPoint = memberPoint;
	}

	public int getPointUsed() {
		return pointUsed;
	}

	public void setPointUsed(int pointUsed) {
		this.pointUsed = pointUsed;
	}

	public String getPointReason() {
		return pointReason;
	}

	public void setPointReason(String pointReason) {
		this.pointReason = pointReason;
	}
    
    
}
