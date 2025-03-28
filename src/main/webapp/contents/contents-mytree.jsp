<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>컨텐츠 메인</title>
<link rel="stylesheet" href="../assets/css/global.css" />
<link rel="stylesheet" href="../assets/css/header.css" />
<link rel="stylesheet" href="../assets/css/banner.css" />
<link rel="stylesheet" href="../assets/css/contents/contents-mytree.css" />
</head>
<body>

	<%@ include file="../layout/header.jsp"%>
	<%@ include file="../layout/banner.jsp"%>

	<div class="page-container">
		<!-- 탭 -->
		
		<div class="tab-container">
			<div class="tab-btn"></div>
			<div id="achievementTab" class="tab-text tab-text-off">업적</div>
			<div id="myTreeTab" class="tab-text tab-text-on">나의 성장 나무</div>
			<div id="pointShopTab" class="tab-text tab-text-off">포인트 샵</div>
		</div>

		<!-- 나의 성장나무 -->
		<div class="contents-container">
			<div class="tree-image">
				<div class="tree-title-word">나의 성장나무🎄</div>
				<div class="tree-wrapper">
					<div class="tree-container">
						<img src="../assets/images/contents/default/default.png">
					</div>
					<div class="tree-button-group">
						<button class="save-button">저장</button>
						<button class="cancel-button">취소</button>
					</div>
				</div>
			</div>



			<!-- 나의꾸미기 -->

			<div class="decorate-container">
				<div class="decorate-title-word">나의 꾸미기🎨</div>
				<div class="decorate-items-container">
					<div class="decorate-tab-container">
						<button class="decorate-tab selected" onclick="showContent('전체')">전체</button>
						<button class="decorate-tab" onclick="showContent('배경')">배경</button>
						<button class="decorate-tab" onclick="showContent('스티커')">스티커</button>
						<button class="decorate-tab" onclick="showContent('나무')">나무</button>
					</div>
					<div class="item-wrapper" id="content-container">
						<%@ include file="contents-sticker.jsp"%>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- 모달 -->

	<div class="set-modal-container">
		<div class="set-modal-background-conntaier">
			<div class="set-modal-top">
				<span id="modal-title"></span>
				<button class="out-set-modal">X</button>
			</div>
			<div class="set-modal-bottom">
				<span id="modal-message">적용하시겠습니까?</span>
				<div>
					<button class="set-modal-ok-button">확인</button>
					<button class="set-modal-no-button">취소</button>
				</div>
			</div>
		</div>
		<div class="black-background"></div>
	</div>

	<script src="../assets/js/contents/contents-mytree.js"></script>
</body>
</html>