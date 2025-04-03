package com.app.dto;

import java.util.Objects;

public class RecommendDTO {
	private Long memberId;
	private String membernickname;
	private String interestBig;
	private String interestSmall;
	private Long recommendId;
	private String recommendCategory;
	private String recommendDescription;
	 
	 // 파싱된 필드들
	 private String name;
	 private String rating;
	 private String menu;
	 private String price;
	 private String addr;
	 private String img;
	 private String link;
	 private String title;
	 private String desc;
	 private String genre;   
	 private String release;
	 private String type;  // 지역 (서울/부산 등)
	 
	 
	// description 파싱 로직
	 public void parseRecommendDescription() {
		 if(recommendDescription == null) return;
		 String[] parts = recommendDescription.split(";");
		 for (String part : parts) {
			 String[] kv = part.split("=", 2);
			 if (kv.length == 2) {
				 String key = kv[0].trim();
				 String value = kv[1].trim();
				 switch (key) {
				 	case "name": name = value; break;
				 	case "rating": rating = value; break;
				 	case "menu": menu = value; break;
				 	case "price": price = value; break;
				 	case "addr": addr = value; break;
				 	case "img": img = value; break;
				 	case "link": link = value; break;
				 	case "title": title = value; break;
				 	case "desc": desc = value; break;
				 	case "genre": genre = value; break;
					case "release": release = value; break; 
					case "type": type = value; break;
				 }
			 }
		 }
	 }
	 
	 public void setrecommendDescription(String recommendDescription) {
		 this.recommendDescription = recommendDescription;
		 parseRecommendDescription();
	 }
	 
	public RecommendDTO() {;}

	public RecommendDTO(Long memberId, String membernickname, String interestBig, String interestSmall,
			Long recommendId, String recommendCategory, String recommendDescription, String name, String rating,
			String menu, String price, String addr, String img, String link, String title, String desc, String genre,
			String release, String type) {
		super();
		this.memberId = memberId;
		this.membernickname = membernickname;
		this.interestBig = interestBig;
		this.interestSmall = interestSmall;
		this.recommendId = recommendId;
		this.recommendCategory = recommendCategory;
		this.recommendDescription = recommendDescription;
		this.name = name;
		this.rating = rating;
		this.menu = menu;
		this.price = price;
		this.addr = addr;
		this.img = img;
		this.link = link;
		this.title = title;
		this.desc = desc;
		this.genre = genre;
		this.release = release;
		this.type = type;
	}

	@Override
	public String toString() {
		return "RecommendDTO [memberId=" + memberId + ", membernickname=" + membernickname + ", interestBig="
				+ interestBig + ", interestSmall=" + interestSmall + ", recommendId=" + recommendId
				+ ", recommendCategory=" + recommendCategory + ", recommendDescription=" + recommendDescription
				+ ", name=" + name + ", rating=" + rating + ", menu=" + menu + ", price=" + price + ", addr=" + addr
				+ ", img=" + img + ", link=" + link + ", title=" + title + ", desc=" + desc + ", genre=" + genre
				+ ", release=" + release + ", type=" + type + "]";
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getMembernickname() {
		return membernickname;
	}

	public void setMembernickname(String membernickname) {
		this.membernickname = membernickname;
	}

	public String getInterestBig() {
		return interestBig;
	}

	public void setInterestBig(String interestBig) {
		this.interestBig = interestBig;
	}

	public String getInterestSmall() {
		return interestSmall;
	}

	public void setInterestSmall(String interestSmall) {
		this.interestSmall = interestSmall;
	}

	public Long getRecommendId() {
		return recommendId;
	}

	public void setRecommendId(Long recommendId) {
		this.recommendId = recommendId;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getRelease() {
		return release;
	}

	public void setRelease(String release) {
		this.release = release;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public int hashCode() {
		return Objects.hash(memberId, recommendId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		RecommendDTO other = (RecommendDTO) obj;
		return Objects.equals(memberId, other.memberId) && Objects.equals(recommendId, other.recommendId);
	}
	
	
	
	
	 
}
