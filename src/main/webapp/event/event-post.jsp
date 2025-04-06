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
<link rel="stylesheet" href="../assets/css/mypage/mypage-mytree.css">
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
                        <span>댓글</span> <span class="visit-count">| 78</span>
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
                    	<c:forEach var="comment" items="${eventComments}">
					        <div class="comment">
					            <div class="user-info">
					                <div class="user-profile">
										<img class="mini-profile" src="${pageContext.request.contextPath}/${comment.memberImgPath}${comment.memberImgName}" alt="프로필 이미지" />
					                    <span>${comment.memberNickName}</span>
					                </div>
					                <div class="update-button">
					                    <c:if test="${comment.memberId == loginId}">
					                        <span class="delete-btn" data-id="${comment.eventCommentId}">삭제</span>
					                    </c:if>
					                </div>
					            </div>
					            <div class="text">
					                <span>${comment.eventCommentDescription}</span>
					            </div>
					            <div class="date">
					                <span><fmt:formatDate value="${comment.eventCommentCreateDate}" pattern="yyyy-MM-dd HH:mm" /></span>
					            </div>
					        </div>
					    </c:forEach>
                    </div>
                </div>
            </div>
        </div>
<script>
function addEventComment(eventId) {
    const inputField = document.getElementById("comment-input");
    const commentText = inputField.value.trim();

    if (commentText === "") return;

    fetch("${pageContext.request.contextPath}/event-comment-write-ok.event", {
        method: "POST",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        body: "eventId=" + encodeURIComponent(eventId) + "&comment=" + encodeURIComponent(commentText)
    })
    .then(response => {
        if (response.ok) {
            location.reload(); // 등록 후 새로고침해서 반영
        } else {
            alert("댓글 등록에 실패했습니다.");
        }
    });

    // UI 초기화
    inputField.value = "";
    document.getElementById("char-count").textContent = "0 / 500";
    const submitBtn = document.getElementById("submit-btn");
    submitBtn.style.backgroundColor = "#ccc";
    submitBtn.style.cursor = "not-allowed";
    submitBtn.disabled = true;
}
</script>
</body>
</html>