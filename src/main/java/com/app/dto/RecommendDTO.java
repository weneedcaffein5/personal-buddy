package com.app.dto;

import java.util.Objects;

public class RecommendDTO {
	 private Long id;
	 private String category;
	 private String description;

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
	 
	 public RecommendDTO() {;}
	 
	 // description 파싱 로직
	 public void parseDescription() {
		 if(description == null) return;
		 String[] parts = description.split(";");
		 for (String part : parts) {
			 String[] kv = part.split("=", 2);
			 if (kv.length == 2) {
				 String key = kv[0];
				 String value = kv[1];
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
				 }
			 }
		 }
	 }
	 
	 public void setDescription(String description) {
		 this.description = description;
		 parseDescription();
	 }

	 
	 
	 
	public RecommendDTO(Long id, String category, String description, String name, String rating, String menu,
			String price, String addr, String img, String link, String title, String desc) {
		super();
		this.id = id;
		this.category = category;
		this.description = description;
		this.name = name;
		this.rating = rating;
		this.menu = menu;
		this.price = price;
		this.addr = addr;
		this.img = img;
		this.link = link;
		this.title = title;
		this.desc = desc;
	}

	@Override
	public String toString() {
		return "RecommendDTO [id=" + id + ", category=" + category + ", description=" + description + ", name=" + name
				+ ", rating=" + rating + ", menu=" + menu + ", price=" + price + ", addr=" + addr + ", img=" + img
				+ ", link=" + link + ", title=" + title + ", desc=" + desc + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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

	public String getDescription() {
		return description;
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
		RecommendDTO other = (RecommendDTO) obj;
		return Objects.equals(id, other.id);
	}
	 
	 
}
