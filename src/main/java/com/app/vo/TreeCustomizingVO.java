package com.app.vo;

import java.util.Objects;

public class TreeCustomizingVO {
	private Long id;
	private	int treeCustomizingPositionX;
	private int treeCustomizingPositionY;
	private int treeCustomizingApply;
	private int itemId;
	private int treeId;
	
	public TreeCustomizingVO() {;}

	@Override
	public String toString() {
		return "TreeCustomizingVO [id=" + id + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		TreeCustomizingVO other = (TreeCustomizingVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getTreeCustomizingPositionX() {
		return treeCustomizingPositionX;
	}

	public void setTreeCustomizingPositionX(int treeCustomizingPositionX) {
		this.treeCustomizingPositionX = treeCustomizingPositionX;
	}

	public int getTreeCustomizingPositionY() {
		return treeCustomizingPositionY;
	}

	public void setTreeCustomizingPositionY(int treeCustomizingPositionY) {
		this.treeCustomizingPositionY = treeCustomizingPositionY;
	}

	public int getTreeCustomizingApply() {
		return treeCustomizingApply;
	}

	public void setTreeCustomizingApply(int treeCustomizingApply) {
		this.treeCustomizingApply = treeCustomizingApply;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public int getTreeId() {
		return treeId;
	}

	public void setTreeId(int treeId) {
		this.treeId = treeId;
	}
	
}
