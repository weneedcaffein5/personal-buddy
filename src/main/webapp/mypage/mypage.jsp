<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-main.css" />
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
                    <strong class="nickname">나는바보입니다</strong>
                    <span>반가워요</span>
                </div>
                <div class="mypage">
                    <div><strong><img class="icon" src="../assets/images/mypage/mypage-icon.png">마이페이지</strong></div>
                    <div><a class="link" href="#">나의 나무</a></div>
                    <div><a class="link" href="#">나의 업적</a></div>
                </div>
                <div class="community">
                    <strong><img class="icon" src="../assets/images/mypage/community-icon.png">커뮤니티</strong>
                    <a class="link" href="#">내 게시물</a>
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
                <div class="tree-info">
                    <div class="tree-info-left">
                        <div><span>자신만의 나무를 꾸며보세요</span></div>
                        <div class="go-tree">
                            <span>나만의 나무</span>
                            <a href="#">나만의 나무 꾸미기 >></a>
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
                        <div class="comment-footer">
                            <span id="char-count">0 / 500</span>
                            <button id="submit-btn" disabled>등록</button>
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
            charCount.textContent = `${length} / 500`;

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
    </script>
</body>

</html>