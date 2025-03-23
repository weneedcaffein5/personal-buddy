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
	<!-- 단일 구매창 -->
	<div class="buy-one-item-box hide">
		<div class="purchase-window">
			<div class="purchase-window-top">
				<span>구매 확인</span>
				<button class="out-purchase-window">X</button>
			</div>
			<div class="purchase-window-bottom">
				<span>나무(🏆 1000P) 상품을 구매 하시겠습니까?</span>
				<div>
					<button class="purchase-window-ok-btn">확인</button>
					<button class="purchase-window-no-btn">취소</button>
				</div>
			</div>
		</div>
		<div class="black-background"></div>
	</div>
	
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
			<div class="point-shop-box">
				<div class="point-shop-tab-box">
					<button class="point-shop-tab-style point-shop-tab-style-on">전체</button>
					<button class="point-shop-tab-style">배경</button>
					<button class="point-shop-tab-style">스티커</button>
					<button class="point-shop-tab-style">나무</button>
				</div>
				<div class="point-shop-item-box">
					<div class="item-selecter-box">
						<button class="item-cart">장바구니</button>
						<button class="select-all-item">모두 담기</button>
						<select class="select-category">
							<option>인기순</option>
							<option>최신순</option>
						</select>
					</div>
					<div class="item-list-box">
						<div class="item-list">
							<div class="item">
								<div class="img-box">
									<img alt="" src="">
								</div>
								<div class="item-info-box">
									<span class="item-info">나무</span>
									<span class="item-info">🏆 1000P</span>
								</div>
								<div class="item-btn-box">
									<button class="buy-item-btn hide">구매</button>
									<button class="select-item-btn hide">담기</button>
								</div>
								<div class="view-item-box">
									<button class="view-item hide">미리보기</button>
								</div>
							</div>
							<div class="item">
								<div class="img-box">
									<img alt="" src="">
								</div>
								<div class="item-info-box">
									<span class="item-info">나무</span>
									<span class="item-info">🏆 1000P</span>
								</div>
								<div class="item-btn-box">
									<button class="buy-item-btn hide">구매</button>
									<button class="select-item-btn hide">담기</button>
								</div>
								<div class="view-item-box">
									<button class="view-item hide">미리보기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
</body>
<script src="../assets/js/contents-point-shop/contents-point-shop.js"></script>
</html>