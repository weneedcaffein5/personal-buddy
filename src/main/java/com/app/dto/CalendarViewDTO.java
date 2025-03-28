package com.app.dto;

import java.sql.Date;
import java.sql.Timestamp;

public class CalendarViewDTO {

	//
	//메인화면 캘린더 (DTO) - CalendarViewDTO
	//CALENDAR_GROUP
	//USER_GROUP - 공유캘린더 공유하는 인원 (Member FK) -> 개인 캘린더여도 써야한다.
	//SCHEDULE
	//CALENDAR
	//SCHEDULE_GROUP - USER_GROUP 범위 내의 인원 중 일정을 공유하는 인원(MEMBER_FK)
	//TODOLIST
	
//	ScheduleVO
	private Long scheduleId;
	private String scheduleTitle;
	private String scheduleContent;
	private Date scheduleStartDate;
	private Date scheduleEndDate;
	private Timestamp scheduleCreateDate;
	private String scheduleColor;
	private String scheduleCategory;
	
//	ScheduleGroupVO
	private Long scheduleGroupId;
	
//	CalendarVO
	private Long calendarId;
	private String calendarTitle;
	
//	CalendarGroupVO
	private Long calendarGroupId;
	
//	UserGroupVO
	private Long userGroupId;
	private Long memberId;
	
//	TodolistVO
	private Long todolistId;
	private String content;
	private Long completed;
}
