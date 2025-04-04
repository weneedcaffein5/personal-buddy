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
<link rel="stylesheet" type="text/css" href="../assets/css/header.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/banner.css" />
<link rel="stylesheet" href="../assets/css/event/event-post.css">
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
                    <h1 class="post-title">오늘의 미션 :  오전6시 기상</h1>
                    <h2 class="post-create-time">2025.03.05게시</h2>
                </div>
                <div class="title-bottom">
                    <div class="member-info">
                        <img src="../assets/images/community/프로필 사진.png" alt="프로필 사진">
                        <span class="member-name">운영자</span>
                    </div>
                    <div class="post-info">
                        <div class="post-info-box">
                            <span class="post-info-text">조회 수</span>
                            <span class="post-info-count">1552</span>
                        </div>
                        <div class="post-info-box">
                            <span class="post-info-text">| 좋아요</span>
                            <span class="post-info-count">244</span>
                        </div>
                        <div class="post-info-box">
                            <span class="post-info-text">| 댓글</span>
                            <span class="post-info-count">78</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="post-main">
            	<img src="../assets/images/event/event6am.png">
            	
            	
            </div>
            <div class="post-like-btn">
                <button class="post-like-btn-off">좋아요</button>
            </div>
            <div class="guestbook-container">
                    <div class="guestbook-header">
                        <span>방문록</span> <span class="visit-count">| 78</span>
                    </div>
                    	<p class="guestbook-info">방문록을 남겨보세요, 바르고 고운말을 사용합시다.</p>
                    <div class="comment-box">
                        <textarea id="comment-input" placeholder="댓글을 입력해주세요" maxlength="500"></textarea>
                    </div>
					<div class="comment-footer">
						<span id="char-count">0 / 500</span>
						<button id="submit-btn" disabled onclick="addComment()">등록</button>
					</div>
                    <div class="comments-box" id="comments-box">
                    	<c:forEach var="comment" items="${guestComments}">
					        <div class="comment">
							    <div class="user-info">
							        <div class="user-profile">
										<img class="mini-profile" src="${pageContext.request.contextPath}/${comment.memberProfileImgPath}${comment.memberProfileImgName}" alt="프로필 이미지" />
							            <span>${comment.memberNickname}</span>
							        </div>
							        <div class="update-button">
							            <c:if test="${comment.memberId == loginId}">
							                <span class="delete-btn" data-id="${comment.guestCommentId}">삭제</span>
							            </c:if>
							        </div>
							    </div>
							    <div class="text">
							        <span>${comment.description}</span>
							    </div>
							    <div class="date">
							        <span><fmt:formatDate value="${comment.createDate}" pattern="yyyy-MM-dd HH:mm" /></span>
							    </div>
							</div>
					    </c:forEach>
                    </div>
                </div>
            </div>
        </div>

</body>
<script src="../assets/js/community/community-post.js"></script>
</html>