<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>님의 게시글</title>
<link rel="stylesheet" href="../assets/css/global.css">
<link rel="stylesheet" href="../assets/css/community/community-post.css">
</head>
<body>
	<div class="community-post">
        <!-- 헤더 -->
        <%@ include file="../layout/header.jsp" %>
        
        <!-- 배너 -->
        <%@ include file="../layout/banner.jsp" %>
        
		<!-- post-main -->
        <div class="main">
            <div class="title">
                <div class="title-top">
                	<div class="title-top-reft">
	                    <span class="post-title">2025 토트넘 경기 일정</span>
                	</div>
                    <div class="title-top-right">
	                    <form action="">
	 	                   <button class="post-update">수정</button>
	                    </form>
	                    <form action="">
		                    <button class="post-delete">삭제</button>
	                    </form>
	                    <span class="post-create-time">2025.01.28게시</span>
                    </div>
                </div>
                <div class="title-bottom">
                    <div class="member-info">
                        <img src="../assets/images/community/프로필 사진.png" alt="프로필 사진">
                        <span class="member-name">슛돌이</span>
                    </div>
                    <div class="post-info">
                        <div class="post-info-box">
                            <span class="post-info-text">조회 수</span>
                            <span class="post-info-count">9999</span>
                        </div>
                        <div class="post-info-box">
                            <span class="post-info-text">좋아요</span>
                            <span class="post-info-count">999</span>
                        </div>
                        <div class="post-info-box">
                            <span class="post-info-text">댓글</span>
                            <span class="post-info-count">99</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="post-main">
            	<img alt="" src="../assets/images/community/토트넘 경기일정 1.png">
            	<span>
	                2025 토트넘 경기 일정입니다.<br>
					1월 2월 3월 4월 5월 6월 7월 8월 9월 10월 11월 12월<br>
					축구 하나도 몰라도 일단 일정 하나쯤은 알고 있어야지 
            	</span>
            </div>
            <div class="post-like-btn">
                <button class="post-like-btn-off">좋아요</button>
            </div>
            <div class="post-comment-title">
                <span class="post-comment-title-text">댓글</span>
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
                            <img src="../assets/images/community/프로필 사진.png" alt="프로필 사진">
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
                            <img src="../assets/images/community/프로필 사진.png" alt="프로필 사진">
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
                            <img src="../assets/images/community/프로필 사진.png" alt="프로필 사진">
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
                            <img src="../assets/images/community/프로필 사진.png" alt="프로필 사진">
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
<script src="../assets/js/community/community-post.js"></script>
</html>