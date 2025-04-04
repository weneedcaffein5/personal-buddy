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
<link rel="stylesheet" type="text/css" href="../assets/css/header.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/banner.css" />
<link rel="stylesheet" href="../assets/css/contents/contents-point-shop.css" />
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
		<%@ include file="../layout/banner.jsp" %>
		<!-- 메인 -->
		<div class="main">
			<div class="tab-container">
				<div class="tab">
				    <div class="tab-sub-position tab-0">
						<a href="contents-achievement.contents">
					    	<span>업적</span>
						</a>
				    </div>
				    <div class="tab-sub-position tab-100">
						<a href="contents-mytree.contents">
					    	<span>나의 성장 나무</span>
						</a>
				    </div>
				    <div class="tab-position tab-200">
						<a href="contents-point-shop.contents">
					    	<span>포인트 샵</span>
						</a>
				    </div>
				</div>
			</div>
			<div class="title">
				<span>포인트 샵 💰</span>
			</div>
			<div class="point-info">
				<span>🏆 보유 포인트  :</span>
				<span class="member-point">${memberPoint != null ? memberPoint : 0} P</span>
			</div>
			<div class="point-log">
				<a>포인트 이용 내역 보기 >></a>
			</div>
			<div class="point-shop-box">
				<div class="point-shop-tab-box">
					<a href="contents-point-shop.contents" class="point-shop-tab-style">
						<span>전체</span>
					</a>
					<a href="contents-point-shop.contents?type=background" class="point-shop-tab-style">
						<span>배경</span>
					</a>
					<a href="contents-point-shop.contents?type=sticker" class="point-shop-tab-style">
						<span>스티커</span>
					</a>
					<a href="contents-point-shop.contents?type=tree" class="point-shop-tab-style">
						<span>나무</span>
					</a>
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
					
						<c:set var="page" value="${param.page ne null ? param.page : 1}" />
						<c:set var="onePageVar" value="24" />
						<c:set var="startIndex" value="${(page - 1) * onePageVar}" />
						<c:set var="endIndex" value="${startIndex + onePageVar - 1}" />
						
						<c:forEach var="item" items="${items}" varStatus="var">
							<c:if test="${var.index >= startIndex and var.index <= endIndex}">
								<c:if test="${var.index % 6 == 0}">
									<div class="item-list">
								</c:if>
									<div class="item">
										<div class="img-box">
											<img alt="" src="">
										</div>
										<div class="item-info-box">
											<span class="item-info">${item.itemName}</span>
											<span class="item-info">🏆 ${item.itemPrice}P</span>
										</div>
										<div class="item-btn-box">
											<button class="buy-item-btn hide">구매</button>
											<button class="select-item-btn hide">담기</button>
										</div>
										<div class="view-item-box">
											<button class="view-item hide">미리보기</button>
										</div>
									</div>
								<c:if test="${var.index % 6 == 5 or var.index == endIndex}">
									</div>
								</c:if>
							</c:if>
						</c:forEach>
						<!-- 페이지 네이션 -->
						<div class="pagination">
							<c:set var="totalPages" value="${Math.ceil(items.size() / onePageVar)}" />
							<c:if test="${page > 1}">
								<a href="?type=${currentType}&page=${page - 1}">
									<img alt="prev" src="../assets/images/contents/default/prev-page.png">
								</a>
							</c:if>
							<c:set var="currentType" value="${param.type ne null ? param.type : ''}" />
							<c:forEach var="i" begin="1" end="${totalPages}">
							    <a href="?type=${currentType}&page=${i}" class="page-btn ${i == page ? 'active' : ''}">
							        <span>${i}</span>
							    </a>
							</c:forEach>
							<c:if test="${page < totalPages}">
								<a href="?type=${currentType}&page=${page + 1}">
									<img alt="next" src="../assets/images/contents/default/next-page.png">
								</a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
		
</body>
<script src="../assets/js/contents/contents-point-shop.js"></script>
</html>