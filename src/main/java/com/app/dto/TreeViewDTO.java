package com.app.dto;

public class TreeViewDTO {
	private Long treeId;
	private Long memberId;
	private int positionX;
	private int positionY;
	private int apply;
	private Long itemId;
	private Long itemCount;
	private String itemType;
	private String itemName;
	private String itemImgPath;
	private String itemImgName;
	
	public TreeViewDTO() {;}

	public TreeViewDTO(Long treeId, Long memberId, int positionX, int positionY, int apply, Long itemId, Long itemCount,
			String itemType, String itemName, String itemImgPath, String itemImgName) {
		super();
		this.treeId = treeId;
		this.memberId = memberId;
		this.positionX = positionX;
		this.positionY = positionY;
		this.apply = apply;
		this.itemId = itemId;
		this.itemCount = itemCount;
		this.itemType = itemType;
		this.itemName = itemName;
		this.itemImgPath = itemImgPath;
		this.itemImgName = itemImgName;
	}

	@Override
	public String toString() {
		return "TreeViewDTO [treeId=" + treeId + ", memberId=" + memberId + ", positionX=" + positionX + ", positionY="
				+ positionY + ", apply=" + apply + ", itemId=" + itemId + ", itemCount=" + itemCount + ", itemType="
				+ itemType + ", itemName=" + itemName + ", itemImgPath=" + itemImgPath + ", itemImgName=" + itemImgName
				+ "]";
	}

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

	public Long getItemCount() {
		return itemCount;
	}

	public void setItemCount(Long itemCount) {
		this.itemCount = itemCount;
	}

	public String getItemType() {
		return itemType;
	}

	public void setItemType(String itemType) {
		this.itemType = itemType;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
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