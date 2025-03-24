package com.app.vo;

import java.util.Objects;

public class ItemVO {

	private Long id;
	private String itemName;
	private int itemPrice;
	private String itemImgPath;
	private String itemImgName;
	private String itemType;
	private String itemCategory;
	
	public ItemVO() {;}

	public ItemVO(Long id, String itemName, int itemPrice, String itemImgPath, String itemImgName, String itemType,
			String itemCategory) {
		this.id = id;
		this.itemName = itemName;
		this.itemPrice = itemPrice;
		this.itemImgPath = itemImgPath;
		this.itemImgName = itemImgName;
		this.itemType = itemType;
		this.itemCategory = itemCategory;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public String getItemType() {
		return itemType;
	}

	public void setItemType(String itemType) {
		this.itemType = itemType;
	}

	public String getItemCategory() {
		return itemCategory;
	}

	public void setItemCategory(String itemCategory) {
		this.itemCategory = itemCategory;
	}

	@Override
	public String toString() {
		return "ItemVO [id=" + id + ", itemName=" + itemName + ", itemPrice=" + itemPrice + ", itemImgPath="
				+ itemImgPath + ", itemImgName=" + itemImgName + ", itemType=" + itemType + ", itemCategory="
				+ itemCategory + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, itemCategory, itemImgName, itemImgPath, itemName, itemPrice, itemType);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ItemVO other = (ItemVO) obj;
		return Objects.equals(id, other.id) && Objects.equals(itemCategory, other.itemCategory)
				&& Objects.equals(itemImgName, other.itemImgName) && Objects.equals(itemImgPath, other.itemImgPath)
				&& Objects.equals(itemName, other.itemName) && itemPrice == other.itemPrice
				&& Objects.equals(itemType, other.itemType);
	}
	
}
