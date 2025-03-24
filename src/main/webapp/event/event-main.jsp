<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<link rel="stylesheet" href="../assets/css/global.css">
<link rel="stylesheet" href="../assets/css/event/event-main.css">
</head>
<body>	

	<!-- 헤더 -->
	<%-- <%@ include file="../layout/header.jsp" %> --%>
	
	<!-- 배너 -->
	<%-- <%@ include file="../layout/banner.jsp" %> --%>
	
	<!-- 이벤트 메인 페이지 -->
	<div class="event-main">
		<div class="tab-container">
			<div class="tab">
			    <div class="tab-position"></div>
				<button class="event-tab tab-text-on">EVENT</button>
				<button class="board-tab tab-text-off">BOARD</button>
			</div>
		</div>
		<div class="title-sub">
		    <span>BUDDYGROUND</span>
		</div>
		<div class="title-main">
		    <span>진행중인 이벤트</span>
		</div>
        <div class="slider-container">
            <div class="slider">
                <img src="../assets/images/event-main/이벤트 이미지1.png" alt="이벤트 슬라이드 이미지1">
                <img src="../assets/images/event-main/이벤트 이미지2.png" alt="이벤트 슬라이드 이미지2">
                <img src="../assets/images/event-main/이벤트 이미지3.png" alt="이벤트 슬라이드 이미지3">
            </div>
            <!-- <button></button>
            <button></button> -->
        </div>
	    <div class="title-sub">
		    <span>BUDDYGROUND</span>
		</div>
		<div class="title-main">
		    <span>버디들의 챌린지</span>
		</div>
        <div class="event-list-container">
        	<div class="event-list">
				<div class="event-list-info">
					<div>
						<img alt="" src="">
					</div>
					<div>
						<span></span>	
					</div>
					<div>
						<span></span>	
					</div>
				</div>    		
				<div class="event-list-info">
				</div>    		        		
        	</div>
        </div>
    </div>
</body>
<script src="../assets/js/event/event-main.js"></script>
</html>