<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>님의 게시글</title>
<link rel="stylesheet" href="../assets/css/community-post/community-post.css">
<link rel="stylesheet" href="../assets/css/global.css">
</head>
<body>
	<div class="community-post">
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
		<!-- post-main -->
        <div class="main">
            <div class="title">
                <div class="title-top">
                    <h1 class="post-title">2025 토트넘 경기 일정</h1>
                    <h2 class="post-create-time">2025.01.28게시</h2>
                </div>
                <div class="title-bottom">
                    <div class="member-info">
                        <img src="../assets/images/community-post/프로필 사진.png" alt="프로필 사진">
                        <span class="member-name">슛돌이</span>
                    </div>
                    <div class="post-info">
                        <div class="post-info-box">
                            <span class="post-info-text">조회 수</span>
                            <span class="post-info-count">9999</span>
                        </div>
                        <div class="post-info-box">
                            <span class="post-info-text">| 좋아요</span>
                            <span class="post-info-count">999</span>
                        </div>
                        <div class="post-info-box">
                            <span class="post-info-text">| 댓글</span>
                            <span class="post-info-count">99</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="post-main">
                내용내용내용내용내용내용내용내용내용내용내용내용<br>
                내용내용내용내용내용내용내용내용내용내용내용내용<br>
                내용내용내용내용내용내용내용내용내용내용내용내용
            </div>
            <div class="post-like-btn">
                <button class="post-like-btn-off">좋아요</button>
            </div>
            <div class="post-comment-title">
                <span class="post-comment-title-text">댓글 |</span>
                <span class="post-comment-title-count">99</span>    
            </div>
            <textarea class="input-comment" maxlength="500" placeholder="댓글을 입력해주세요"></textarea>
            <div class="insert-box">
                <span class="comment-text-count">0</span>
                <span class="comment-text-max">/ 500</span>
                <button class="insert-comment-btn">등록</button>
            </div>
            <div class="post-comment-box">
                <div class="post-comment">
                    <div class="comment-member-box">
                        <div class="member-info">
                            <img src="../assets/images/community-post/프로필 사진.png" alt="프로필 사진">
                            <span class="member-name">슛돌이</span>
                        </div>
                        <button class="member-comment-modify">수정</button>
                    </div>
                    <div class="member-comment-box">
                        <span class="member-comment">뭔가 가벼운거</span>
                        <button class="member-comment-like-btn none">♥</button>
                    </div>
                    <div class="modify-hide-box">
                        <span class="comment-text-count hide">0</span>
                        <span class="comment-text-max hide">/ 500</span>
                        <button class="modify-delete-btn hide">삭제</button>
                        <button class="modify-add-btn hide">수정 완료</button>
                    </div>
                    <div class="comment-info">
                        <div class="comment-create-time">2025.02.05  03:20</div>
                        <div class="comment-like-count">♡ 99</div>
                    </div>
                </div>
                <div class="post-comment">
                    <div class="comment-member-box">
                        <div class="member-info">
                            <img src="../assets/images/community-post/프로필 사진.png" alt="프로필 사진">
                            <span class="member-name">슛돌이</span>
                        </div>
                        <button class="member-comment-modify">수정</button>
                    </div>
                    <div class="member-comment-box">
                        <span class="member-comment">내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</span>
                        <button class="member-comment-like-btn none">♥</button>
                    </div>
                    <div class="modify-hide-box">
                        <span class="comment-text-count hide">0</span>
                        <span class="comment-text-max hide">/ 500</span>
                        <button class="modify-delete-btn hide">삭제</button>
                        <button class="modify-add-btn hide">수정 완료</button>
                    </div>
                    <div class="comment-info">
                        <div class="comment-create-time">2025.02.05  03:20</div>
                        <div class="comment-like-count">♡ 99</div>
                    </div>
                </div>
                <div class="post-comment">
                    <div class="comment-member-box">
                        <div class="member-info">
                            <img src="../assets/images/community-post/프로필 사진.png" alt="프로필 사진">
                            <span class="member-name">아스날</span>
                        </div>
                        <button class="member-comment-modify none">수정</button>
                    </div>
                    <div class="member-comment-box">
                        <span class="member-comment">내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</span>
                        <button class="member-comment-like-btn">♥</button>
                    </div>
                    <div class="modify-hide-box">
                        <span class="comment-text-count hide">0</span>
                        <span class="comment-text-max hide">/ 500</span>
                        <button class="modify-delete-btn hide">삭제</button>
                        <button class="modify-add-btn hide">수정 완료</button>
                    </div>
                    <div class="comment-info">
                        <div class="comment-create-time">2025.02.05  03:20</div>
                        <div class="comment-like-count">♡ 99</div>
                    </div>
                </div>
                <div class="post-comment">
                    <div class="comment-member-box">
                        <div class="member-info">
                            <img src="../assets/images/community-post/프로필 사진.png" alt="프로필 사진">
                            <span class="member-name">아스날</span>
                        </div>
                        <button class="member-comment-modify none">수정</button>
                    </div>
                    <div class="member-comment-box">
                        <span class="member-comment">내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</span>
                        <button class="member-comment-like-btn">♥</button>
                    </div>
                    <div class="modify-hide-box">
                        <span class="comment-text-count hide">0</span>
                        <span class="comment-text-max hide">/ 500</span>
                        <button class="modify-delete-btn hide">삭제</button>
                        <button class="modify-add-btn hide">수정 완료</button>
                    </div>
                    <div class="comment-info">
                        <div class="comment-create-time">2025.02.05  03:20</div>
                        <div class="comment-like-count">♡ 99</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
<script src="../assets/js/community-post/community-post.js"></script>
</html>