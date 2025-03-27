/*업적 조회*/

package com.app.dto;
import java.util.Objects;

public class AchievementViewDTO {
	
//	업적
	private Long achievementId;
	private String achievementName;
	private int achievementMission;
	private String achievementImgName;
	private String achievementImgPath;
	private String achievementGetPoint;
	
//	업적 완료
	private Long memberId;
	
	public AchievementViewDTO() {;}

	public AchievementViewDTO(Long achievementId, String achievementName, int achievementMission,
			String achievementImgName, String achievementImgPath, String achievementGetPoint, Long memberId) {
		super();
		this.achievementId = achievementId;
		this.achievementName = achievementName;
		this.achievementMission = achievementMission;
		this.achievementImgName = achievementImgName;
		this.achievementImgPath = achievementImgPath;
		this.achievementGetPoint = achievementGetPoint;
		this.memberId = memberId;
	}

	
	
	@Override
	public String toString() {
		return "AchievementViewDTO [achievementId=" + achievementId + ", achievementName=" + achievementName
				+ ", achievementMission=" + achievementMission + ", achievementImgName=" + achievementImgName
				+ ", achievementImgPath=" + achievementImgPath + ", achievementGetPoint=" + achievementGetPoint
				+ ", memberId=" + memberId + "]";
	}

	public Long getAchievementId() {
		return achievementId;
	}

	public void setAchievementId(Long achievementId) {
		this.achievementId = achievementId;
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

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	@Override
	public int hashCode() {
		return Objects.hash(achievementId, memberId);
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
		return Objects.equals(achievementId, other.achievementId) && Objects.equals(memberId, other.memberId);
	}
}
