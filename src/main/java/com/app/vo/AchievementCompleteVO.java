package com.app.vo;

import java.util.Objects;

public class AchievementCompleteVO {
	private Long id;
	private int achievementCurrentMission;
	private Long memberId;
	private Long achievementId;
	
	public AchievementCompleteVO() {;}
	public AchievementCompleteVO(Long id, int achievementCurrentMission, Long memberId, Long achievementId) {
		super();
		this.id = id;
		this.achievementCurrentMission = achievementCurrentMission;
		this.memberId = memberId;
		this.achievementId = achievementId;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public int getAchievementCurrentMission() {
		return achievementCurrentMission;
	}
	public void setAchievementCurrentMission(int achievementCurrentMission) {
		this.achievementCurrentMission = achievementCurrentMission;
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
	public String toString() {
		return "AchievementCompleteVO [id=" + id + ", achievementCurrentMission=" + achievementCurrentMission
				+ ", memberId=" + memberId + ", achievementId=" + achievementId + "]";
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
		AchievementCompleteVO other = (AchievementCompleteVO) obj;
		return Objects.equals(id, other.id);
	}
	
	
}


