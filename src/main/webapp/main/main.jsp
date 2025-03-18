<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<link rel="stylesheet" href="../assets/css/main/main.css">
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	

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


	<div>
		<h2>캘린더</h2>
	</div>


	  <main class="content-wrapper">
        <!-- 음식 추천  -->
        <section class="food-recommend">
            <p class="title"> 어제 한식을 드셨네요? 오늘 ‘역삼역’에서 점심 이런 메뉴 어때요?!!</p>
            <div class="food-list">
                <div class="food-item"> 
                    <img src="../assets/images/main/만땅스시.jpg" alt="만땅스시">
                    <div class="food-info">
                        <h3 class="restaurant-name">만땅스시 역삼점</h3>
                        <p class="rating">4.0(49)</p>
                        <p class="price-category">₩10,000~20,000 · 초밥</p>
                        <p class="location">역삼로 128 1층</p>
                        <p class="service">매장 내 식사·테이크아웃·배달 서비스</p>
                    </div>
                </div>
                <div class="food-item"> 
                    <img src="../assets/images/main/갓포돈.jpg" alt="갓포돈">
                    <div class="food-info">
                        <h3 class="restaurant-name">돈까스마을 역삼점</h3>
                        <p class="rating">4.2(89)</p>
                        <p class="price-category">₩9,000~15,000 · 돈까스</p>
                        <p class="location">역삼로 102 2층</p>
                        <p class="service">매장 내 식사·테이크아웃</p>
                    </div>
                </div>
                <div class="food-item"> 
                    <img src="../assets/images/main/스테이크하우스.jpg" alt="스테이크하우스">
                    <div class="food-info">
                        <h3 class="restaurant-name">스테이크하우스</h3>
                        <p class="rating">4.5(120)</p>
                        <p class="price-category">₩15,000~30,000 · 스테이크</p>
                        <p class="location">강남대로 210</p>
                        <p class="service">매장 내 식사·예약 가능</p>
                    </div>
                </div>
                <div class="food-item"> 
                    <img src="../assets/images/main/한식당청담.jpg" alt="한식당 청담">
                    <div class="food-info">
                        <h3 class="restaurant-name">한식당 청담</h3>
                        <p class="rating">4.3(65)</p>
                        <p class="price-category">₩12,000~20,000 · 한식</p>
                        <p class="location">청담로 45</p>
                        <p class="service">매장 내 식사·테이크아웃</p>
                    </div>
                </div>
            </div>
        </section>
    </main>
    
    <section class="place-recommend">
    <p class="place-title1">카페에 가실 예정이시네요!</p>
    <p class="place-title2">스터디에 최적화된 카페 몇 군데를 찾아보았어요</p>

    <div class="place-list">
        <div class="place-item">
            <div class="place-hover"></div> 
            <img src="../assets/images/main/카페사진1.png" alt="카페사진1">
            <div class="place-info">
                <h3 class="place-name">조용한 분위기의 공부 잘되는 카페!</h3>
                <p class="place-sub">카페인사이드</p>
                <p class="place-rating">4.4(69) <span class="place-price">· ₩1~10,000 · 카페</span></p>
                <p class="place-location">도곡로3길 27</p>
            </div>
        </div>

        <div class="place-item">
            <div class="place-hover"></div>
            <img src="../assets/images/main/카페사진2.png" alt="지오바네커피">
            <div class="place-info">
                <h3 class="place-name">라떼가 맛있는 카페</h3>
                <p class="place-sub">지오반니커피</p>
                <p class="place-rating">4.7(53) <span class="place-price">· ₩1~10,000 · 커피숍</span></p>
                <p class="place-location">역삼동 667-17 1층 101호</p>
            </div>
        </div>
    </div>
</section>
</div>


	
	



	
    
</body>


</html>