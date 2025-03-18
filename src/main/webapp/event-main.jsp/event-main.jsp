<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<link rel="stylesheet" href="../assets/css/event-main/event-main.css">
</head>
<body>

    <div class="event-main">
        <header class="header"></header>
        <div class="footer"></div>
        <div class="main">
            <div class="slider-box">
                <div class="tab-container">
                    <div class="slider"></div>
                    <div id="eventTab" class="tab-text tab-text-on">EVENT</div>
                    <div id="boardTab" class="tab-text tab-text-off">BOARD</div>
                </div>
            </div>
            <div class="buddy-ground">BUDDYGROUND</div>
            <div class="event-main-title">진행중인 이벤트</div>
            <div class="slider-container">
                <img class="slider-image" src="/event/img/이벤트 이미지1.png" alt="이벤트 슬라이드 이미지1">
                <img class="slider-image" src="/event/img/이벤트 이미지2.png" alt="이벤트 슬라이드 이미지2">
                <img class="slider-image" src="/event/img/이벤트 이미지3.png" alt="이벤트 슬라이드 이미지3">
            </div>
        </div>
    </div>

</body>
<script>
    
    const eventTab = document.getElementById("eventTab");
    const boardTab = document.getElementById("boardTab");
    const slider = document.querySelector(".slider");
    const images = document.querySelectorAll('.slider-image');
    let currentIndex = 0;

    eventTab.addEventListener("click", () => {
        slider.classList.remove("slider-change");  // 왼쪽으로 이동
        eventTab.classList.add("tab-text-on");
        eventTab.classList.remove("tab-text-off");
        boardTab.classList.add("tab-text-off");
        boardTab.classList.remove("tab-text-on");
    });

    boardTab.addEventListener("click", () => {
        slider.classList.add("slider-change");  // 오른쪽으로 이동
        boardTab.classList.add("tab-text-on");
        boardTab.classList.remove("tab-text-off");
        eventTab.classList.add("tab-text-off");
        eventTab.classList.remove("tab-text-on");
    });

    function showNextImage() {
        images[currentIndex].classList.remove('active');
        currentIndex = (currentIndex + 1) % images.length;
        images[currentIndex].classList.add('active');
    }

    images[currentIndex].classList.add('active');

    setInterval(showNextImage, 5000);

</script>
</html>