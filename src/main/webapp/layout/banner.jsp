<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/global.css" />
<link rel="stylesheet" href="../assets/css/banner.css">
<title>Insert title here</title>
</head>
<body>
	<div class="banner-container">	
    	<div class="banner-wrapper" id="bannerWrapper">
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
		<div class="nav-button left" onclick="prevSlide()">‹</div>
		<div class="nav-button right" onclick="nextSlide()">›</div>
	</div>
</body>
<script>
  let currentIndex = 0;
  const bannerWrapper = document.getElementById("bannerWrapper");
  const slides = document.querySelectorAll(".banner-slide");
  const totalSlides = slides.length;
  const slideWidth = 1920;
  const intervalTime = 5000;
  let slideTimer;

  function moveToSlide(index) {
    currentIndex = index;
    bannerWrapper.style.transform = "translateX(-" + (slideWidth * currentIndex) + "px)";
  }

  function nextSlide() {
    if (currentIndex < totalSlides - 1) {
      currentIndex++;
      moveToSlide(currentIndex);
      resetAutoSlide();
    }
  }

  function prevSlide() {
    if (currentIndex > 0) {
      currentIndex--;
      moveToSlide(currentIndex);
      resetAutoSlide();
    }
  }

  function startAutoSlide() {
    slideTimer = setInterval(() => {
      if (currentIndex < totalSlides - 1) {
        currentIndex++;
        moveToSlide(currentIndex);
      } else {
        clearInterval(slideTimer); // 자동 슬라이드 멈춤
      }
    }, intervalTime);
  }

  function resetAutoSlide() {
    clearInterval(slideTimer);
    startAutoSlide();
  }

  window.addEventListener("load", () => {
    moveToSlide(0);
    startAutoSlide();
  });
</script>
</html>