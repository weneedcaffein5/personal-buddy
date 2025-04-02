<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
<link rel="stylesheet" type="text/css" href="../assets/css/header.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/banner.css" />
<link rel="stylesheet" href="../assets/css/event/event-main.css">
</head>
<body>	

	<!-- 헤더 -->
	<%@ include file="../layout/header.jsp" %>
	
	<!-- 배너 -->
	<%@ include file="../layout/banner.jsp" %>
	
	<!-- 이벤트 메인 페이지 -->
	<div class="event-main">
		<div class="tab-container">
			<div class="tab">
			    <div class="tab-position">
					<a href="event-main.event">
				    	<span>EVENT</span>
					</a>
			    </div>
			    <div class="tab-sub-position">
					<a href="community-main.community">
				    	<span>BOARD</span>
					</a>
			    </div>
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
		        <div class="slides">
		            <a href="#" class="slide"><img src="../assets/images/event/event-main3.png" alt="이벤트 슬라이드 이미지3"></a>
		            <a href="#" class="slide"><img src="../assets/images/event/event-main1.png" alt="이벤트 슬라이드 이미지1"></a>
		            <a href="#" class="slide"><img src="../assets/images/event/event-main2.png" alt="이벤트 슬라이드 이미지2"></a>
		            <a href="#" class="slide"><img src="../assets/images/event/event-main3.png" alt="이벤트 슬라이드 이미지3"></a>
		            <a href="#" class="slide"><img src="../assets/images/event/event-main1.png" alt="이벤트 슬라이드 이미지1"></a>
		        </div>
		    </div>
		        <button class="prev-btn">
		        	<img class="prev-btn-off hide" alt="left-off" src="../assets/images/event/left-btn-off.png">
		        	<img class="prev-btn-on" alt="left-on" src="../assets/images/event/left-btn.png">
		        </button>
		        <button class="next-btn">
		        	<img class="next-btn-off hide" alt="right-off" src="../assets/images/event/right-btn-off.png">
		        	<img class="next-btn-on" alt="right-on" src="../assets/images/event/right-btn.png">
		        </button>
        </div>
	    <div class="title-sub">
		    <span>BUDDYGROUND</span>
		</div>
		<div class="title-main">
		    <span>버디들의 챌린지</span>
		</div>
        <div class="event-list-container">
		    <c:forEach var="event" items="${events}" varStatus="events">
		        <c:if test="${events.index % 2 == 0}">
		            <div class="event-list">
		        </c:if>
	        		<div class="event-list-info">
	        			<c:choose>
	        				<c:when test="${onEvent[events.index] }">
					        	<a href="event-post.event?id=${event.id }">
								<div class="event-list-img">
									<img src="${event.eventImgPath}${event.eventImgName}" alt="이벤트 리스트 이미지">
								</div>
								<div class="event-list-title">
									<span>${event.eventTitle }</span>
								</div>
								<div class="event-list-time">
									<fmt:formatDate value="${event.eventStartDate }" pattern="yyyy-MM-dd HH:mm"/>
								</div>
					        	</a>
	        				</c:when>
	        				<c:otherwise>
								<div class="event-list-img">
									<img src="${event.eventImgPath}${event.eventImgName}" alt="이벤트 리스트 이미지">
								</div>
								<div class="event-list-title">
									<span>${event.eventTitle }</span>
								</div>
								<div class="event-list-time">
									<fmt:formatDate value="${event.eventStartDate }" pattern="yyyy-MM-dd HH:mm"/>
								</div>
	        				</c:otherwise>
	        			</c:choose>
					</div>   		
		        <c:if test="${events.index % 2 == 1 or events.last}">
		          	</div>
		        </c:if>
		    </c:forEach>
        </div>
    </div>
</body>
<script src="../assets/js/event/event-main.js"></script>
</html>