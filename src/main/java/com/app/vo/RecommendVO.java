package com.app.vo;

import java.util.Objects;

public class RecommendVO {
	 private Long id;
	 private String recommendCategory;
	 private String recommendDescription;

	
	 public RecommendVO() {;}


	public RecommendVO(Long id, String recommendCategory, String recommendDescription) {
		super();
		this.id = id;
		this.recommendCategory = recommendCategory;
		this.recommendDescription = recommendDescription;
	}


	@Override
	public String toString() {
		return "RecommendVO [id=" + id + ", recommendCategory=" + recommendCategory + ", recommendDescription="
				+ recommendDescription + "]";
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getRecommendCategory() {
		return recommendCategory;
	}


	public void setRecommendCategory(String recommendCategory) {
		this.recommendCategory = recommendCategory;
	}


	public String getRecommendDescription() {
		return recommendDescription;
	}


	public void setRecommendDescription(String recommendDescription) {
		this.recommendDescription = recommendDescription;
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
		RecommendVO other = (RecommendVO) obj;
		return Objects.equals(id, other.id);
	}
	 
	 
}

