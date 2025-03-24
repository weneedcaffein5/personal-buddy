package com.app.vo;

import java.sql.Timestamp;
import java.util.Objects;

public class AlertVO {

	private Long id;
	private String alertType;
	private String alertMessage;
	private Timestamp alertCreateTime;
	private int alertRead;
	private Timestamp alertReadTime;
	private Long memberId;
	
	public AlertVO() {;}
	public AlertVO(Long id, String alertType, String alertMessage, Timestamp alertCreateTime, int alertRead,
			Timestamp alertReadTime, Long memberId) {
		this.id = id;
		this.alertType = alertType;
		this.alertMessage = alertMessage;
		this.alertCreateTime = alertCreateTime;
		this.alertRead = alertRead;
		this.alertReadTime = alertReadTime;
		this.memberId = memberId;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getAlertType() {
		return alertType;
	}
	public void setAlertType(String alertType) {
		this.alertType = alertType;
	}
	public String getAlertMessage() {
		return alertMessage;
	}
	public void setAlertMessage(String alertMessage) {
		this.alertMessage = alertMessage;
	}
	public Timestamp getAlertCreateTime() {
		return alertCreateTime;
	}
	public void setAlertCreateTime(Timestamp alertCreateTime) {
		this.alertCreateTime = alertCreateTime;
	}
	public int getAlertRead() {
		return alertRead;
	}
	public void setAlertRead(int alertRead) {
		this.alertRead = alertRead;
	}
	public Timestamp getAlertReadTime() {
		return alertReadTime;
	}
	public void setAlertReadTime(Timestamp alertReadTime) {
		this.alertReadTime = alertReadTime;
	}
	public Long getMemberId() {
		return memberId;
	}
	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}
	@Override
	public String toString() {
		return "AlertVO [id=" + id + ", alertType=" + alertType + ", alertMessage=" + alertMessage
				+ ", alertCreateTime=" + alertCreateTime + ", alertRead=" + alertRead + ", alertReadTime="
				+ alertReadTime + ", memberId=" + memberId + "]";
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
		AlertVO other = (AlertVO) obj;
		return Objects.equals(id, other.id);
	}
	
	
}
