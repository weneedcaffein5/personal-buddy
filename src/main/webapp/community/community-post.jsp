<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>님의 게시글</title>
<link rel="stylesheet" href="../assets/css/global.css">
<link rel="stylesheet" type="text/css" href="../assets/css/header.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/banner.css" />
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
	                    <span class="post-title">${boardPostViewDTO.boardTitle }</span>
                	</div>
                    <div class="title-top-right">
	                    <form action="">
	 	                   <button class="post-update">수정</button>
	                    </form>
	                    <form action="">
		                    <button class="post-delete">삭제</button>
	                    </form>
	                    <span class="post-create-time">
	                    	<fmt:formatDate value="${boardPostViewDTO.boardContentCreateDate}" pattern="yyyy-MM-dd" /> 게시
	                    </span>
                    </div>
                </div>
                <div class="title-bottom">
                    <div class="member-info">
                        <img src="../assets/images/community/프로필 사진.png" alt="프로필 사진">
                        <span class="member-name">${boardPostViewDTO.memberNickname }</span>
                    </div>
                    <div class="post-info">
                        <div class="post-info-box">
                            <span class="post-info-text">조회 수</span>
                            <span class="post-info-count">${boardPostViewDTO.boardContentViews }</span>
                        </div>
                        <div class="post-info-box">
                            <span class="post-info-text">좋아요</span>
                            <span class="post-info-count">${boardPostViewDTO.likeCount }</span>
                        </div>
                        <div class="post-info-box">
                            <span class="post-info-text">댓글</span>
                            <span class="post-info-count">${boardPostViewDTO.commentCount }</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="post-main">
            	<c:forEach var="image" items="${postImgs}">
				    <img alt="포스트 이미지" src="..${image.boardImgPath}${image.boardImgName}">
				</c:forEach>
            	<span>
					${boardPostViewDTO.boardContent }
            	</span>
            </div>
            
            <!-- 좋아요 -->
            <div class="post-like-btn">
			    <!-- 사용자가 좋아요를 누르지 않은 경우 (userLike가 null) -->
			    <c:if test="${empty userLike}">
			        <form action="community-post-like.community" method="post">
			            <input type="hidden" name="postId" value="${boardPostViewDTO.id}" />
			            <button class="post-like-btn-off">좋아요</button>
			        </form>
			    </c:if>
			
			    <!-- 사용자가 이미 좋아요를 누른 경우 (userLike가 존재) -->
			    <c:if test="${not empty userLike}">
			        <form action="community-post-off-like.community" method="post">
			            <input type="hidden" name="postId" value="${boardPostViewDTO.id}" />
			            <input type="hidden" name="boardLikeId" value="${userLike.id}" />
			            <button class="post-like-btn-off post-like-btn-on">♥ ${boardPostViewDTO.likeCount}</button>
			        </form>
			    </c:if>
			</div>
			
            <div class="post-comment-title">
                <span class="post-comment-title-text">댓글</span>
                <span class="post-comment-title-count">${boardPostViewDTO.commentCount }</span>    
            </div>
            <form action="community-insert-comment.community" method="post">
            	<input type="hidden" name="postId" value="${boardPostViewDTO.id}">
	            <textarea class="input-comment" name="boardCommentContent" maxlength="499" placeholder="댓글을 입력해주세요"></textarea>
	            <div class="insert-box">
	                <span class="comment-text-count">0</span>
	                <span class="comment-text-max">/ 500</span>
	                <button class="insert-comment-btn">등록</button>
	            </div>
            </form>
            
            <div class="post-comment-box">
            	<c:forEach var="comment" items="${comments }">
	                <div class="post-comment">
	                    <div class="comment-member-box">
	                        <div class="member-info">
	                            <img src="../assets/images/community/프로필 사진.png" alt="프로필 사진">
	                            <span class="member-name">${comment.memberNickname }</span>
	                        </div>
	                        <c:if test="${sessionScope.loginId eq comment.memberId}">
			                    <button class="member-comment-modify">수정</button>
			                </c:if>
	                    </div>
	                    <div class="member-comment-box">
	                        <span class="member-comment">${comment.boardCommentContent }</span>

							<c:set var="likedCommentIds" value="" />
							<c:forEach var="like" items="${commentLikes}">
							    <c:set var="likedCommentIds" value="${likedCommentIds},${like.boardCommentId}" />
							</c:forEach>
							
							<c:if test="${sessionScope.loginId ne comment.memberId}">
							    <c:choose>
							        <c:when test="${fn:contains(likedCommentIds, comment.id)}">
							            <form action="community-comment-delete-like.community" method="post">
							                <input type="hidden" name="commentId" value="${comment.id}" />
							                <input type="hidden" name="postId" value="${boardPostViewDTO.id}" />
							                <button class="member-comment-like-btn member-comment-like-btn-on">♥</button>
							            </form>
							        </c:when>
							
							        <c:otherwise>
							            <form action="community-comment-insert-like.community" method="post">
							                <input type="hidden" name="commentId" value="${comment.id}" />
							                <input type="hidden" name="postId" value="${boardPostViewDTO.id}" />
							                <button class="member-comment-like-btn">♡</button>
							            </form>
							        </c:otherwise>
							    </c:choose>
							</c:if>

	                    </div>
	                    <div class="modify-hide-box">
	                        <span class="comment-text-count text-count2 hide">0</span>
	                        <span class="comment-text-max hide">/ 500</span>
	                        <form action="community-delete-comment.community" method="post">
	                        	<input type="hidden" name="commentId" value="${comment.id }">
	                        	<input type="hidden" name="postId" value="${boardPostViewDTO.id }">
		                        <button class="modify-delete-btn hide">삭제</button>
	                        </form>
	                        <form action="community-update-comment.community" method="post">
	                        	<input type="hidden" name="commentId" value="${comment.id }">
	                        	<input type="hidden" name="postId" value="${boardPostViewDTO.id }">
	                        	<input type="hidden" name="textVal">
		                        <button type="submit" class="modify-add-btn hide">수정 완료</button>
	                        </form>
	                    </div>
	                    <div class="comment-info">
	                        <div class="comment-create-time">
	                        	<fmt:formatDate value="${comment.boardCommentCreateDate}" pattern="yyyy-MM-dd HH:mm" />
	                        </div>
	                        <div class="comment-like-count">♡ ${comment.likeCount }</div>
	                    </div>
	                </div>
            	</c:forEach>
            </div>
        </div>
    </div>

</body>
<script src="../assets/js/community/community-post.js"></script>
</html>