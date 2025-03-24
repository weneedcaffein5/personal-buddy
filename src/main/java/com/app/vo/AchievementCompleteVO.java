package com.app.vo;

import java.util.Objects;

public class AchievementCompleteVO {
	Long id;
	String achievementName;
	int achievementMission;
	Long memberId;
	Long achievementId;
	@Override
	public String toString() {
		return "AchievementCompleteVO [id=" + id + ", achievementName=" + achievementName + ", achievementMission="
				+ achievementMission + ", memberId=" + memberId + ", achievementId=" + achievementId + "]";
	}
	public AchievementCompleteVO(Long id, String achievementName, int achievementMission, Long memberId,
			Long achievementId) {
		super();
		this.id = id;
		this.achievementName = achievementName;
		this.achievementMission = achievementMission;
		this.memberId = memberId;
		this.achievementId = achievementId;
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
	public Long getMemberId() {
		return memberId;
	}
	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}
	public Long getAchievementId() {
		return achievementId;
	}
	public void setAchievementId(Long achievementId) {
		this.achievementId = achievementId;
	}
	@Override
	public int hashCode() {
		return Objects.hash(achievementId, id, memberId);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		AchievementCompleteVO other = (AchievementCompleteVO) obj;
		return Objects.equals(achievementId, other.achievementId) && Objects.equals(id, other.id)
				&& Objects.equals(memberId, other.memberId);
	}	

	
	
}


