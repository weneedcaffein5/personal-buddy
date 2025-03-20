<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/global.css" />
<link rel="stylesheet" href="../assets/css/community/community.css">
<link rel="stylesheet" href="../assets/css/main/main.css">
<title>커뮤니티</title>
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
	
	<div class="tab-box">
                <div class="tab-container">
                    <div class="tab-btn"></div>
                    <div id="eventTab" class="tab-text tab-text-on">EVENT</div>
                    <div id="boardTab" class="tab-text tab-text-off">BOARD</div>
                </div>
    </div>
        <div class="main">
            <div class="event-sub-title">TOP10</div>
            <div class="event-main-title">버디들의 HOT 🔥</div>
        </div>
		<div class="hot-container">
			<div class="content">
				<img src="../assets/images/community/post1.png">
				<span class="content-name">자바 껌이죠</span>
				<span>따자하오영수</span>
				<span class="content-info">2025.02.01 게시</span>
				<div class="content-info">
					<span>999+</span>
					<span>1032</span>
					<span>78</span>
				</div>
			</div>
			<div class="content">
				<a href="#"><img src="../assets/images/community/post2.png"></a>
				<span class="content-name">퍼스널 버디 일정 관리 잘 된다</span>
				<span>파워제이</span>
				<span class="content-info">2025.02.01 게시</span>
				<div class="content-info">
					<span>999+</span>
					<span>1032</span>
					<span>78</span>
				</div>
			</div>
			<div class="content">
				<img src="../assets/images/community/post3.png">
				<span class="content-name">⚽ 2025 챔피언스 리그 16강 대진표</span>
				<span>슛돌이</span>
				<span class="content-info">2025.02.01 게시</span>
				<div class="content-info">
					<span>600</span>
					<span>9999+</span>
					<span>78</span>
				</div>
			</div>
		</div>
	
	
</body>
</html>