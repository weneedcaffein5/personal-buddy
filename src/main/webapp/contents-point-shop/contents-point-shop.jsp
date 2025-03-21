<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포인트 샵</title>
<link rel="stylesheet" href="../assets/css/global.css" />
<link rel="stylesheet" href="../assets/css/contents-point-shop/contents-point-shop.css" />
</head>
<body>
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
		
		<!-- 메인 -->
		<div class="main">
			<div class="tab-box">
				<div class="tab-container">
					<div class="tab-btn"></div>
					<div id="achievementTab" class="tab-text tab-text-off">업적</div>
					<div id="myTreeTab" class="tab-text tab-text-on">나의 성장 나무</div>
					<div id="pointShopTab" class="tab-text tab-text-off">포인트 샵</div>
				</div>
			</div>
			<div class="title">
				<span>포인트 샵 💰</span>
			</div>
			<div class="point-info">
				<span>🏆 보유 포인트  :</span>
				<span class="member-point">1000 P</span>
			</div>
			<div class="point-log">
				<a>포인트 이용 내역 보기 >></a>
			</div>
		</div>
		
</body>
<script src="../assets/js/contents-point-shop/contents-point-shop.js"></script>
</html>