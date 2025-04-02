<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../assets/css/global.css">
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js"></script>
<link rel="stylesheet" href="../assets/css/calendar/calendar-test.css">
<script src="../assets/js/calendar/calendar-test.js"></script>
<meta charset="UTF-8">
<title>캘린더 테스트</title>
</head>
<body>
	<div>
		<div class="calendar-upper">
			<div class="calendar-upper-left">
				<span class="today-span"></span>
			</div>
			<div class="calendar-upper-right">
				<div class="custom-select-wrapper">
					<!-- 클릭 시 드롭다운 열릴 라벨 -->
					<label id="custom-select-label">월간</label>
					
					<!-- 옵션 리스트 -->
					<div class="custom-select-options">
					  <div class="option" data-value="dayGridMonth">월간</div>
					  <div class="option" data-value="timeGridWeek">주간</div>
					  <div class="option" data-value="timeGridDay">일간</div>
					</div>
					
					<!-- 숨겨진 실제 select (선택적 활용) -->
					<select id="hidden-select" style="display: none;">
					  <option value="dayGridMonth">월간</option>
					  <option value="timeGridWeek">주간</option>
					  <option value="timeGridDay">일간</option>
					</select>
				</div>
			</div>
		</div>
		
		<!-- 캘린더 전체 wrapper -->
		<div class="calendar-wrapper">
			<!-- 좌측: FullCalendar 캘린더 -->
			<div id="calendar"></div>
			<!-- 우측: 사이드 일정 정보 입력창 -->
			<div class="calendar-detail-panel">
			  <div class="calendar-section">
			    <label>시작</label>
			    <div><input type="date" id="start-date"> <input type="time" id="start-time"></div>
			  </div>
			  <div class="calendar-section">
			    <label>종료</label>
			    <div><input type="date" id="end-date"> <input type="time" id="end-time"></div>
			  </div>
			  <div class="calendar-section">
			    <label>색</label>
			    <div>
			      <span class="color-dot" style="background-color: #01cd74;"></span>
			      <span>에메랄드 그린</span>
			    </div>
			  </div>
			  <div class="calendar-section">
			    <label>내용</label>
			    <textarea id="event-desc" rows="4" placeholder="일정 내용을 입력하세요"></textarea>
			  </div>
			  <div class="calendar-btns">
			    <button class="cancel-btn">취소</button>
			    <button class="save-btn">저장</button>
			  </div>
			</div>
		</div>
	</div>
</body>
</html>