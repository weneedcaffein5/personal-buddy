package com.app.dto;

public class TreeViewDTO {
	
	    private Long treeId;         
	    private Long memberId;       
	    private int positionX;
	    private int positionY;
	    private int apply;           
	    private Long itemId;     
	    
	    public TreeViewDTO() {;}

		public TreeViewDTO(Long treeId, Long memberId, int positionX, int positionY, int apply, Long itemId) {
			super();
			this.treeId = treeId;
			this.memberId = memberId;
			this.positionX = positionX;
			this.positionY = positionY;
			this.apply = apply;
			this.itemId = itemId;
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
	    
}
