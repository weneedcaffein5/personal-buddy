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

    <div class="tabs">
        <div class="tab active">업적</div>
        <div class="tab">나의 성장 나무</div>
        <div class="tab">포인트 샵</div>
    </div>

    <div class="points-container">
        기간별 포인트 획득을 확인해보세요! <span>💸 포인트 획득</span>
    </div>

    <section class="points-section">
        <div class="point-box">
            <h3>일간 목표</h3>
            <ul>
                <li><input type="checkbox" checked> 일정 등록 ( 1 / 1 ) <span class="points">30P 획득</span></li>
                <li><input type="checkbox"> 운동 일정 등록 ( 0 / 1 ) <span class="points">40P 획득</span></li>
                <li><input type="checkbox"> 공부 일정 등록 ( 0 / 1 ) <span class="points">50P 획득</span></li>
                <li><input type="checkbox"> 약속 일정 등록 ( 0 / 1 ) <span class="points">50P 획득</span></li>
                <li><input type="checkbox"> 공부 일정 등록 ( 0 / 1 ) <span class="points">50P 획득</span></li>
            </ul>
        </div>

        <div class="point-box">
            <h3>주간 목표</h3>
            <ul>
                <li><input type="checkbox" checked> 일일 목표 (5/5) <span class="points">100P 획득</span></li>
                <li><input type="checkbox"> 연속 달성 (2/5) <span class="points">30P 획득</span></li>
                <li><input type="checkbox"> 주간 목표 완료 (1/4) <span class="points">50P 획득</span></li>
            </ul>
        </div>

        <div class="point-box">
            <h3>월간 목표</h3>
            <ul>
                <li><input type="checkbox" checked> 일일 목표 (20/20) <span class="points">10P 획득</span></li>
                <li><input type="checkbox"> 연속 목표 (4/20) <span class="points">30P 획득</span></li>
                <li><input type="checkbox"> 월간 목표 완료 (1/4) <span class="points">50P 획득</span></li>
            </ul>
        </div>
    </section>
</body>
</html>