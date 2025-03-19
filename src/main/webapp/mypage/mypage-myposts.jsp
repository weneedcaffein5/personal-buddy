<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-myposts.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/global.css" />
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	<div class="body">
        <div class="container">
            <div class="sidebar">
                <div class="profile">
                    <span><img src="../assets/images/mypage/profile-default-image.png"></span>
                </div>
                <div class="profile-setting">
                    <strong class="nickname">나는 신이다</strong>
                    <span>반가워요</span>
                </div>
                <div class="mypage">
                    <div><strong><img class="icon" src="../assets/images/mypage/mypage-icon.png">마이페이지</strong></div>
                    <div><a id="now" class="link" href="#">나의 나무</a></div>
                    <div><a class="link" href="#">나의 업적</a></div>
                </div>
                <div class="community">
                    <strong><img class="icon" src="../assets/images/mypage/community-icon.png">커뮤니티</strong>
                    <a class="link" href="mypage-myposts.jsp">내 게시물</a>
                    <a class="link" href="#">내가 쓴 댓글</a>
                </div>
                <div class="myinfo">
                        <strong><img class="icon" src="../assets/images/mypage/mypage-icon.png">내 정보</strong>
                    <a class="link" href="#">프로필 설정</a>
                    <a class="link" href="#">계정 설정</a>
                    <a class="link" href="#">포인트 내역</a>
                </div>
            </div>
            
            <div class="right-contentbox">
            
            <div class="myposts-container">
    			<p class="myposts-description">내가 커뮤니티에 등록한 게시물을 확인하고 관리할 수 있습니다.</p>
    			<h2 class="myposts-title">내 게시물</h2>
    			<hr class="myposts-divider">
    	
    		<div class="myposts-list">
        	<div class="mypost">
            	<img class="mypost-image" src="../assets/images/posts/post-1.jpg" alt="게시물 이미지">
            <div class="mypost-content">
                <h3 class="mypost-title">⚽ 2025 토트넘 경기 일정</h3>
                <p class="mypost-text">이번 시즌 토트넘의 경기 일정을 공유합니다. 챔피언스리그와 프리미어리그 일정을 한눈에 볼 수 있도록 정리했습니다.</p>
            </div>
                <p class="mypost-meta">2025.02.01 게시</p>
            <div class="mypost-stats">
            	<span>👍 800</span>
            	<span>💬 120</span>
            	<span>👁 2,310</span>
            </div>
        </div>
        
        <div class="mypost">
            <img class="mypost-image" src="../assets/images/posts/post-2.jpg" alt="게시물 이미지">
            <div class="mypost-content">
                <h3 class="mypost-title">🌆 올해 꼭 먹어야 할 음식</h3>
                <p class="mypost-text">서울에서 꼭 먹어봐야 할 음식 리스트를 정리해보았습니다. 추천 맛집과 메뉴도 함께 공유합니다!</p>
            </div>
                <p class="mypost-meta">2025.02.01 게시</p>
                <div class="mypost-stats">
                    <span>👍 500</span>
                    <span>💬 80</span>
                    <span>👁 1,910</span>
                </div>
        </div>
        
        <div class="mypost">
            <img class="mypost-image" src="../assets/images/posts/post-3.jpg" alt="게시물 이미지">
            <div class="mypost-content">
                <h3 class="mypost-title">☕ 강남에서 가봐야 할 카페 리스트</h3>
                <p class="mypost-text">강남 지역에서 분위기 좋고 공부하기 좋은 카페를 모아봤어요! 추천할 곳 있으면 댓글로 남겨주세요.</p>
            </div>
                <p class="mypost-meta">2025.02.01 게시</p>
                <div class="mypost-stats">
                    <span>👍 420</span>
                    <span>💬 60</span>
                    <span>👁 1,500</span>
                </div>
        </div>
        
        <div class="mypost">
            <img class="mypost-image" src="../assets/images/posts/post-4.jpg" alt="게시물 이미지">
            <div class="mypost-content">
                <h3 class="mypost-title">🌃 강남에서 야경 보기 좋은 카페</h3>
                <p class="mypost-text">야경이 멋진 강남 카페를 찾아봤어요! 차분한 분위기에서 커피 한 잔하며 야경을 즐길 수 있는 곳 추천합니다.</p>
            	</div>
                <p class="mypost-meta">2025.02.01 게시</p>
                <div class="mypost-stats">
                    <span>👍 380</span>
                    <span>💬 45</span>
                    <span>👁 1,200</span>
                	</div>
        	</div>
    	</div>
	</div>
</div> 
	
</body>
</html>
