package com.app.vo;

import java.util.Objects;

public class AchievementVO {
	
	Long id;
	String achievementName;
	int achievementMission;
	String achievementImgName;
	String achievementImgPath;
	String achievementGetPoint;
	
	public AchievementVO() {;}

	@Override
	public String toString() {
		return "AchievementVO [id=" + id + ", achievementName=" + achievementName + ", achievementMission="
				+ achievementMission + ", achievementImgName=" + achievementImgName + ", achievementImgPath="
				+ achievementImgPath + ", achievementGetPoint=" + achievementGetPoint + "]";
	}

	public AchievementVO(Long id, String achievementName, int achievementMission, String achievementImgName,
			String achievementImgPath, String achievementGetPoint) {
		super();
		this.id = id;
		this.achievementName = achievementName;
		this.achievementMission = achievementMission;
		this.achievementImgName = achievementImgName;
		this.achievementImgPath = achievementImgPath;
		this.achievementGetPoint = achievementGetPoint;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAchievementName() {
		return achievementName;
	}

	public void setAchievementName(String achievementName) {
		this.achievementName = achievementName;
	}

	public int getAchievementMission() {
		return achievementMission;
	}

	public void setAchievementMission(int achievementMission) {
		this.achievementMission = achievementMission;
	}

	public String getAchievementImgName() {
		return achievementImgName;
	}

	public void setAchievementImgName(String achievementImgName) {
		this.achievementImgName = achievementImgName;
	}

	public String getAchievementImgPath() {
		return achievementImgPath;
	}

	public void setAchievementImgPath(String achievementImgPath) {
		this.achievementImgPath = achievementImgPath;
	}

	public String getAchievementGetPoint() {
		return achievementGetPoint;
	}

	public void setAchievementGetPoint(String achievementGetPoint) {
		this.achievementGetPoint = achievementGetPoint;
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
		AchievementVO other = (AchievementVO) obj;
		return Objects.equals(id, other.id);
	}


	
}



