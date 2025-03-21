<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<link rel="stylesheet" href="../assets/css/global.css">
<link rel="stylesheet" href="../assets/css/event/event-main.css">
</head>
<body>	

   <div class="event-main">
      	<!-- 헤더 -->
        <%@ include file="../layout/header.jsp" %>
        <!-- 배너 -->
        <div class="banner-container">   
          <div class="banner-wrapper">
             <div class="banner-slide">
                 <img src="../assets/images/main/banner-blue.png" class="banner-slide" alt="배너 1">
                 <div class="banner-text">
                    <p class="banner-subtitle">버디들이 관심 있는 일정은?</p>
                    <h2 class="banner-title">버디들의 관심 일정을 <br> 공유해주세요!</h2>
                </div>
             </div>
             <div class="banner-slide">
                 <img src="../assets/images/main/banner-green.png" class="banner-slide" alt="배너 2">
                 <div class="banner-text">
                    <p class="banner-subtitle">버디들이 관심 있는 일정은?</p>
                    <h2 class="banner-title">버디들의 관심 일정을 <br> 공유해주세요!</h2>
                </div>
             </div>
             <div class="banner-slide">
                 <img src="../assets/images/main/banner-yellow.png" class="banner-slide" alt="배너 3">
                 <div class="banner-text">
                    <p class="banner-subtitle">버디들이 관심 있는 일정은?</p>
                    <h2 class="banner-title">버디들의 관심 일정을 <br> 공유해주세요!</h2>
                </div>
             </div>
             <div class="banner-slide">
                 <img src="../assets/images/main/banner-blue.png" class="banner-slide" alt="배너 1(복사)">
                 <div class="banner-text">
                    <p class="banner-subtitle">버디들이 관심 있는 일정은?</p>
                    <h2 class="banner-title">버디들의 관심 일정을 <br> 공유해주세요!</h2>
                </div>
             </div> 
          </div>
      </div>
      <!-- 이벤트 메인 페이지 -->
        <div class="main">
            <div class="tab-box">
                <div class="tab-container">
                    <div class="tab-btn"></div>
                    <div id="eventTab" class="tab-text tab-text-on">EVENT</div>
                    <div id="boardTab" class="tab-text tab-text-off">BOARD</div>
                </div>
            </div>
            <div class="event-sub-title">BUDDYGROUND</div>
            <div class="event-main-title">진행중인 이벤트</div>
            <div class="slide-container">
                <div class="slide-wrapper">
                    <img class="slide-image" src="../assets/images/event-main/이벤트 이미지1.png" alt="이벤트 슬라이드 이미지1">
                    <img class="slide-image" src="../assets/images/event-main/이벤트 이미지2.png" alt="이벤트 슬라이드 이미지2">
                    <img class="slide-image" src="../assets/images/event-main/이벤트 이미지3.png" alt="이벤트 슬라이드 이미지3">
                </div>
            </div>
            <div class="event-sub-title2">BUDDYGROUND</div>
            <div class="event-main-title2">버디들의 챌린지</div>
            <div class="event-list">
                <div class="event-list-line">
                    <div class="event-list-item">
                        <img src="../assets/images/event-main/이벤트 세부 이미지1.png" alt="이벤트 리스트 이미지1">
                        <div class="event-list-main-text">오늘의 미션 :  오전6시 기상</div>
                        <div class="event-list-sub-text">2025.03.05</div>
                    </div>
                    <div class="event-list-item">
                        <img src="../assets/images/event-main//이벤트 세부 이미지2.png" alt="이벤트 리스트 이미지2">
                        <div class="event-list-main-text">매일매일 출석체크</div>
                        <div class="event-list-sub-text">2025.03.05</div>
                    </div>
                </div>
                <div class="event-list-line">
                    <div class="event-list-item">
                        <img src="../assets/images/event-main/이벤트 세부 이미지3.png" alt="이벤트 리스트 이미지3">
                        <div class="event-list-main-text">한 곡 타임 어택 챌린지</div>
                        <div class="event-list-sub-text">2025.03.05</div>
                    </div>
                    <div class="event-list-item">
                        <img src="../assets/images/event-main/이벤트 세부 이미지4.png" alt="이벤트 리스트 이미지4">
                        <div class="event-list-main-text">오늘 하루는 힐링 데이</div>
                        <div class="event-list-sub-text">2025.03.05</div>
                    </div>
                </div>
                <div class="event-list-line">
                        <div class="event-list-item">
                        <img src="../assets/images/event-main/이벤트 세부 이미지5.png" alt="이벤트 리스트 이미지5">
                        <div class="event-list-main-text">봄맞이 나들이 챌린지</div>
                        <div class="event-list-sub-text">2025.03.05</div>
                    </div>
                    <div class="event-list-item">
                        <img src="../assets/images/event-main/이벤트 세부 이미지6.png" alt="이벤트 리스트 이미지6">
                        <div class="event-list-main-text">집중력 업! 공부 타임 챌린지</div>
                        <div class="event-list-sub-text">2025.03.05</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
<script src="../assets/js/event/event-main.js"></script>
</html>