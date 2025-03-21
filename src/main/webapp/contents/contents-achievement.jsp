<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/global.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/contents/contents-achievement.css" />
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div class="banner-container">	
    	<div class="banner-wrapper">
    	<a href="#" class="banner-slide">
	    		<div class="banner-slide">
	        		<img src="../assets/images/main/banner-blue.png" class="banner-slide" alt="배너 1">
	        		<div class="banner-text">
	        			<p class="banner-subtitle">버디들이 관심 있는 일정은?</p>
	        			<h2 class="banner-title">버디들의 관심 일정을 <br> 공유해주세요!</h2>
	    			</div>
	    		</div>
    		</a>
    		
    		<a href="#" class="banner-slide">
	    		<div class="banner-slide">
	        		<img src="../assets/images/main/banner-green.png" class="banner-slide" alt="배너 2">
	        		<div class="banner-text">
	        			<p class="banner-subtitle">버디들이 관심 있는 일정은?</p>
	        			<h2 class="banner-title">버디들의 관심 일정을 <br> 공유해주세요!</h2>
	    			</div>
	    		</div>
    		</a>
    		
    		<a href="#" class="banner-slide">
	    		<div class="banner-slide">
	        		<img src="../assets/images/main/banner-yellow.png" class="banner-slide" alt="배너 3">
	        		<div class="banner-text">
	        			<p class="banner-subtitle">버디들이 관심 있는 일정은?</p>
	        			<h2 class="banner-title">버디들의 관심 일정을 <br> 공유해주세요!</h2>
	    			</div>
	    		</div>
    		</a>
    		
    		<a href="#" class="banner-slide">
	    		<div class="banner-slide">
	        		<img src="../assets/images/main/banner-blue.png" class="banner-slide" alt="배너 1(복사)">
	        		<div class="banner-text">
	        			<p class="banner-subtitle">버디들이 관심 있는 일정은?</p>
	        			<h2 class="banner-title">버디들의 관심 일정을 <br> 공유해주세요!</h2>
	    			</div>
	    		</div> 
    		</a>
    	</div> 	    
	</div>


    <div class="tab-box">
				<div class="tab-container">
					<div class="tab-btn"></div>
					<div id="achievementTab" class="tab-text tab-text-off">업적</div>
					<div id="myTreeTab" class="tab-text tab-text-on">나의 성장 나무</div>
					<div id="pointShopTab" class="tab-text tab-text-off">포인트 샵</div>
				</div>
			</div>

    <div class="points-container">
        기간별 포인트 획득을 확인해보세요! <span>💸 포인트 획득</span>
    </div>

    <section class="points-section">
        <div class="point-box">
        
            <h3>일간 목표</h3>
            <ul>
                <li><input type="checkbox" checked onclick="return false;" class="custom-checkbox" > 일정 등록 ( 1 / 1 ) <span class="points">30P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 운동 일정 등록 ( 0 / 1 ) <span class="points">40P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 공부 일정 등록 ( 0 / 1 ) <span class="points">50P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 약속 일정 등록 ( 0 / 1 ) <span class="points">50P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 일일 목표 모두 달성 ( 1 / 4 ) <span class="points">50P 획득</span></li>
            </ul>
        </div>

        <div class="point-box">
            <h3>주간 목표</h3>
            <ul>
                <li><input type="checkbox" checked disabled class="custom-checkbox"> 일정 등록 ( 5 / 5 ) <span class="points">100P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 운동 일정 등록 ( 2 / 5 ) <span class="points">30P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 공부 일정 등록 ( 0 / 5 ) <span class="points">50P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 약속 일정 등록 ( 3 / 5 ) <span class="points">50P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 주간 목표 모두 달성 ( 1 / 4 ) <span class="points">50P 획득</span></li>
            </ul>
        </div>

        <div class="point-box">
            <h3>월간 목표</h3>
            <ul>
                <li><input type="checkbox" checked disabled class="custom-checkbox"> 일일 목표 (20/20) <span class="points">10P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 연속 목표 (4/20) <span class="points">30P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 월간 목표 완료 (1/4) <span class="points">50P 획득</span></li>
            </ul>
        </div>
    </section>
 
    
    <!-- 업적 list -->
    <h2 class="section-title">업적 목록 📝</h2>

    <div class="achievements-container">
    
        <!-- 업적 카드 -->               
        <div class="achievement-card">
            <img src="../assets/images/contents/achievment/퍼스널버디.png" alt="퍼스널 버디" class="achievement-icon">
            
            <div class="achievment-desc">
	            <h3 class="achievement-title">퍼스널 버디</h3>
	            <div class="achievement-line"></div> 
	            <p class="achievement-description">퍼스널 버디 첫 가입 시</p>
	            <p class="achievement-description">기본 증정 배지</p>
	            <ul class="achievement-tasks">
	                <li>
	                    <img src="../assets/images/contents/achievment/checkbox-icon-true.png" alt="체크" class="check-icon">
	                    <span>(1 / 1)</span>
	                </li>
	            </ul>
	            <p class="achievement-points">달성 시 <span class="highlight">300P</span> 획득</p>
	        </div>
        </div>
        

        <div class="achievement-card">
            <img src="../assets/images/contents/achievment/알쓰.png" alt="알쓰" class="achievement-icon">
            <h3 class="achievement-title">알쓰</h3>
            <p class="achievement-description">음주 약속 일정</p>
            <ul class="achievement-tasks">
                <li>
                    <img src="../assets/images/contents/achievment/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <span>10회 완료 시 달성 (10 / 10)</span>
                   
                </li>
            </ul>
            <p class="achievement-points">달성 시 <span class="highlight">30P</span> 획득</p>
        </div>

    </div>
    
    
</body>
<script src="../assets/js/contents/contents-achievement.js"></script>
</html>