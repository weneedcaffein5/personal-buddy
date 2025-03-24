package com.app.vo;

import java.util.Objects;

public class TreeBuyItemVO {
	private Long id;
	private Long itemCount;
	
	public TreeBuyItemVO() {;}
	
	
	public TreeBuyItemVO(Long id, Long itemCount) {
		this.id = id;
		this.itemCount = itemCount;
	}

	
	@Override
	public String toString() {
		return "TreeBuyItemVO [id=" + id + ", itemCount=" + itemCount + "]";
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
		TreeBuyItemVO other = (TreeBuyItemVO) obj;
		return Objects.equals(id, other.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getItemCount() {
		return itemCount;
	}

	public void setItemCount(Long itemCount) {
		this.itemCount = itemCount;
	}
	
}
