package com.app.vo;

import java.util.Objects;

public class CartVO {
	private Long id;
	private int cartItemCount;
	private Long memberId;
	private Long itemId;
	
	public CartVO() {;}

	public CartVO(Long id, int cartItemCount, Long memberId, Long itemId) {
		super();
		this.id = id;
		this.cartItemCount = cartItemCount;
		this.memberId = memberId;
		this.itemId = itemId;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getCartItemCount() {
		return cartItemCount;
	}

	public void setCartItemCount(int cartItemCount) {
		this.cartItemCount = cartItemCount;
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

	@Override
	public String toString() {
		return "cartVO [id=" + id + ", cartItemCount=" + cartItemCount + ", memberId=" + memberId + ", itemId=" + itemId
				+ "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(cartItemCount, id, itemId, memberId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CartVO other = (CartVO) obj;
		return cartItemCount == other.cartItemCount && Objects.equals(id, other.id)
				&& Objects.equals(itemId, other.itemId) && Objects.equals(memberId, other.memberId);
	}

}
