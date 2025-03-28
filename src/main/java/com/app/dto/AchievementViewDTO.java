/*업적 조회*/

package com.app.dto;
import java.util.Objects;

public class AchievementViewDTO {
	
//	업적 완료
	private Long achievementCompleteId;
	private int achievementCurrentMission;
	private Long memberId;
	
//	업적
	private Long achievementId;
	private int achievementMission;
	private String achievementImgName;
	private String achievementImgPath;
	private String achievementGetPoint;
	
	
	public AchievementViewDTO() {;}


	public AchievementViewDTO(Long achievementCompleteId, int achievementCurrentMission, Long memberId,
			Long achievementId, int achievementMission, String achievementImgName, String achievementImgPath,
			String achievementGetPoint) {
		this.achievementCompleteId = achievementCompleteId;
		this.achievementCurrentMission = achievementCurrentMission;
		this.memberId = memberId;
		this.achievementId = achievementId;
		this.achievementMission = achievementMission;
		this.achievementImgName = achievementImgName;
		this.achievementImgPath = achievementImgPath;
		this.achievementGetPoint = achievementGetPoint;
	}
	
	public Long getAchievementCompleteId() {
		return achievementCompleteId;
	}


	public void setAchievementCompleteId(Long achievementCompleteId) {
		this.achievementCompleteId = achievementCompleteId;
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
	public String toString() {
		return "AchievementViewDTO [achievementCompleteId=" + achievementCompleteId + ", achievementCurrentMission="
				+ achievementCurrentMission + ", memberId=" + memberId + ", achievementId=" + achievementId
				+ ", achievementMission=" + achievementMission + ", achievementImgName=" + achievementImgName
				+ ", achievementImgPath=" + achievementImgPath + ", achievementGetPoint=" + achievementGetPoint + "]";
	}


	@Override
	public int hashCode() {
		return Objects.hash(achievementCompleteId, achievementId, memberId);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		AchievementViewDTO other = (AchievementViewDTO) obj;
		return Objects.equals(achievementCompleteId, other.achievementCompleteId)
				&& Objects.equals(achievementId, other.achievementId) && Objects.equals(memberId, other.memberId);
	}
	
	
}
