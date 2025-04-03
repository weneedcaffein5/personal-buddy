<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/global.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-mytree.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/event/event-post.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/header.css" />
<title>나의 나무</title>
</head>		
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div class="body">
        <div class="container">
        <!-- 왼쪽 사이드바 (프로필, 링크) -->
            <div class="sidebar">
                <div class="profile">
                    <img src="../${loginProfile.memberImgPath}${loginProfile.memberImgName}" alt="프로필 이미지">
                </div>
                <div class="profile-setting">
                	<div class="nickname">
	                    <span>${loginProfile.memberNickName}</span>                	
                	</div>
                	<div class="status-message">
	                    <span>${loginProfile.memberComment}</span>                	
                	</div>
                </div>
                <div class="mypage">
                    <div class="tap-name">
                    	<img class="icon" src="../assets/images/mypage/mypage-icon.png">
                    	<span>마이페이지</span>
                    </div>
                    <div class="a-wrapper">
                    	<a id="now" class="link" href="mypage-mytree.mypage?id=${ loginId }">나의 나무</a>
                    </div>
                    <div class="a-wrapper">
                    	<a class="link" href="mypage-myachievement.mypage?id=${ loginId }">나의 업적</a>
                    </div>
                </div>
                <div class="community">
                	<div class="tap-name">
                		<img class="icon" src="../assets/images/mypage/community-icon.png">
	                    <span>커뮤니티</span>
                	</div>
                	<div class="a-wrapper">
	                    <a class="link" href="mypage-myposts.jsp">내 게시물</a>
                	</div>
                	<div class="a-wrapper">
	                    <a class="link" href="#">내가 쓴 댓글</a>
                	</div>
                </div>
                <div class="myinfo">
                	<div class="tap-name">
						<img class="icon" src="../assets/images/mypage/mypage-icon.png">
						<span>내 정보</span>
                	</div>
                	<div class="a-wrapper">
	                    <a class="link" href="#">프로필 설정</a>
                	</div>
                	<div class="a-wrapper">
	                    <a class="link" href="mypage-info.mypage?id=${ loginId }">계정 설정</a>
                	</div>
                	<div class="a-wrapper">
	                    <a class="link" href="#">포인트 내역</a>                	
                	</div>
                	<div class="a-wrapper">
	                    <a class="link" href="#">알림 내역</a>                	
                	</div>
                	<div class="a-wrapper">
	                    <a class="link" href="#">추전 정보 수정</a>                	
                	</div>
                </div>
            </div>
            <div class="right-contentbox">
                <div class="tree-info">
                    <div class="tree-info-left">
                        <div><span class="tree-info-style">자신만의 나무를 꾸며보세요</span></div>
                        <div class="go-tree">
                            <span class="go-tree-style">나만의 나무</span>
                            <a href="../contents/contents-mytree.jsp">나만의 나무 꾸미기 >></a>
                        </div>
                    </div>
                </div>    
                <div class="tree">
                    <img class="tree-background" src="../assets/images/mypage/tree.png">
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
						<button id="submit-btn" disabled>등록</button>
					</div>
                    <div class="comments-box">
                    	<div class="comment">
                    		<div class="user-info">
                    			<div class="user-profile">
                    				<img class="mini-profile"/>
                    				<span>하이</span>
                    			</div>
                    			<div class="update-button">
                    				<span>수정</span>
                    			</div>
                    		</div>
                    		<div class="text">
                    			<span>asdf</span>
                    		</div>
                    		<div class="date">
                    			<span>2025-01-01 12:34</span>
                    		</div>
                    	</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
    const commentInput = document.getElementById("comment-input");
    const charCount = document.getElementById("char-count");
    const submitBtn = document.getElementById("submit-btn");

    commentInput.addEventListener("input", function () {
        let length = commentInput.value.length;
        charCount.textContent = length + " / 500";

        if (length > 0) {
            submitBtn.style.backgroundColor = "#009DCC";
            submitBtn.style.cursor = "pointer";
            submitBtn.disabled = false;
        } else {
            submitBtn.style.backgroundColor = "#ccc";
            submitBtn.style.cursor = "not-allowed";
            submitBtn.disabled = true;
        }
    });
    
    function addComment() {
        let inputField = document.getElementById("comment-input");
        let commentDisplay = document.getElementById("comment-display");
        
        if (inputField.value.trim() !== "") {
            commentDisplay.innerHTML = `<p>${inputField.value}</p>`;
            inputField.value = "";
        }
    }
    </script>
</body>
<script src="../assets/js/community/community-post.js"></script>
</html>