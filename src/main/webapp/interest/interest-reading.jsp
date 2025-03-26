<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사 카테고리</title>
<link rel="stylesheet" href="../assets/css/global.css">
<link rel="stylesheet" href="../assets/css/interest/interest-category.css">
</head>
<body>
	<div class="container">
        <!-- 왼쪽 말풍선 -->
        <div class="container-left">
            <div class="speech-bubble">
                자주 읽는 책 장르를 알려주시면,<br>
                취향에 맞는 도서나 독서 습관을 도와줄 <br>
				콘텐츠를 제공해드릴게요
            </div>
            <img src="../assets/images/interest/logo.png" alt="로고 이미지" class="logo-img">
        </div>

        <!-- 오른쪽 관심사 선택 -->
        <div class="container-right">
	        <div class="container-right-wrapper">
	        	<div class="wrapper">
					<div class="main-title">
						<span>0. (독서) 선호 하는 책 장르를 선택 해주세요</span>
					</div>
					<div class="sub-title">
						<span>최소 2개 이상</span>
					</div>     
		            <div class="tags">
	               		<span class="tag">고전 문학</span>
		                <span class="tag">역사 소설</span>
		                <span class="tag">철학 소설</span>
		                <span class="tag">판타지 소설</span>
		                <span class="tag">SF 소설</span>
		                <span class="tag">스릴러 소설</span>
		                <span class="tag">공포 소설</span>
		                <span class="tag">미스터리 / 추리 소설</span>
		                <span class="tag">로맨스 소설</span>
		                <span class="tag">어드벤처 소설</span>
		                <span class="tag">전쟁 소설</span>
		                <span class="tag">스포츠</span>
		                <span class="tag">다큐멘터리</span>
		                <span class="tag">느와르</span>
		                <span class="tag">포스트 아포칼립스 소설</span>
		                <span class="tag">디스토피아 소설</span>
		                <span class="tag">에세이</span>
		                <span class="tag">여행기</span>
		                <span class="tag">일반 문학</span>
		                <span class="tag">자기 개발서</span>
		                <span class="tag">경제 / 경영</span>
		                <span class="tag">비문학</span>
		                <span class="tag">만화책</span>
		            </div>
	        	</div>
	        	<div class="next-btn-wrapper">
	        		<div class="btn-spacing">
		        		<form action="">
		        			<button class="back-btn">뒤로가기</button>
		        		</form>
			        	<form action="">
				            <button class="next-btn">다음으로</button>
			        	</form>
	        		</div>
	        	</div>
	        </div>
        </div>
    </div>
</body>
<script src="../assets/js/interest/interest-category.js"></script>
</html>