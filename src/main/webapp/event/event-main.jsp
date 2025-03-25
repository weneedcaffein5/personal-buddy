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
	<%@ include file="../layout/header.jsp" %>
	
	<!-- 배너 -->
	<%@ include file="../layout/banner.jsp" %>
	
	<!-- 이벤트 메인 페이지 -->
	<div class="event-main">
		<div class="tab-container">
			<div class="tab">
			    <div class="tab-position">
					<a href="../event/event-main.jsp">
				    	<span>EVENT</span>
					</a>
			    </div>
			    <div class="tab-sub-position">
					<a href="../community/community.jsp">
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
		            <a href="#" class="slide"><img src="../assets/images/event/이벤트 이미지1.png" alt="이벤트 슬라이드 이미지1"></a>
		            <a href="#" class="slide"><img src="../assets/images/event/이벤트 이미지2.png" alt="이벤트 슬라이드 이미지2"></a>
		            <a href="#" class="slide"><img src="../assets/images/event/이벤트 이미지3.png" alt="이벤트 슬라이드 이미지3"></a>
		        </div>
		        <button class="prev">&#10094;</button>
		        <button class="next">&#10095;</button>
		    </div>
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
			        	<a href="event-post.jsp?id=1">
							<div class="event-list-img">
								<img src="../assets/images/event/이벤트 세부 이미지1.png" alt="이벤트 리스트 이미지1">
							</div>
							<div class="event-list-title">
								<span>오늘의 미션 : 오전6시 기상</span>
							</div>
							<div class="event-list-time">
								<span>2025.03.05</span>
							</div>
			        	</a>
					</div>    		
				<div class="event-list-info">
					<a href="event-post.jsp">
						<div class="event-list-img">
							<img src="../assets/images/event/이벤트 세부 이미지2.png" alt="이벤트 리스트 이미지2">
						</div>
						<div class="event-list-title">
							<span>매일매일 출석체크</span>
						</div>
						<div class="event-list-time">
							<span>2025.03.05</span>
						</div>
			        </a>
				</div>    		
        	</div>
        	<div class="event-list">
				<div class="event-list-info">
					<a href="event-post.jsp">
						<div class="event-list-img">
							<img src="../assets/images/event/이벤트 세부 이미지3.png" alt="이벤트 리스트 이미지3">
						</div>
						<div class="event-list-title">
							<span>한 곡 타임 어택 챌린지</span>
						</div>
						<div class="event-list-time">
							<span>2025.03.05</span>
						</div>
		        	</a>
				</div>    		
				<div class="event-list-info">
					<a href="event-post.jsp">
						<div class="event-list-img">
							<img src="../assets/images/event/이벤트 세부 이미지4.png" alt="이벤트 리스트 이미지4">
						</div>
						<div class="event-list-title">
							<span>오늘 하루는 힐링 데이</span>
						</div>
						<div class="event-list-time">
							<span>2025.03.05</span>
						</div>
		        	</a>
				</div>    		
        	</div>
        	<div class="event-list">
				<div class="event-list-info">
					<a href="event-post.jsp">
						<div class="event-list-img">
							<img src="../assets/images/event/이벤트 세부 이미지5.png" alt="이벤트 리스트 이미지5">
						</div>
						<div class="event-list-title">
							<span>봄맞이 나들이 챌린지</span>
						</div>
						<div class="event-list-time">
							<span>2025.03.05</span>
						</div>
		        	</a>
				</div>    		
				<div class="event-list-info">
					<a href="event-post.jsp">
						<div class="event-list-img">
							<img src="../assets/images/event/이벤트 세부 이미지6.png" alt="이벤트 리스트 이미지6">
						</div>
						<div class="event-list-title">
							<span>집중력 업! 공부 타임 챌린지</span>
						</div>
						<div class="event-list-time">
							<span>2025.03.05</span>
						</div>
		        	</a>
				</div>    		
        	</div>
        </div>
    </div>
</body>
<script src="../assets/js/event/event-main.js"></script>
</html>