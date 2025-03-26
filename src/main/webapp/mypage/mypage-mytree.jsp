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
                    <div><a id="now" class="link" href="mypage-mytree.mypage">나의 나무</a></div>
                    <div><a class="link" href="mypage-myachievement.mypage">나의 업적</a></div>
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
                <div class="tree-info">
                    <div class="tree-info-left">
                        <div><span class="tree-info-style">자신만의 나무를 꾸며보세요</span></div>
                        <div class="go-tree">
                            <span class="go-tree-style">나만의 나무</span>
                            <a href="../contents/contents-main.jsp">나만의 나무 꾸미기 >></a>
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
                    <div class="post-comment-box">
                <div class="post-comment">
                    <div class="comment-member-box">
                        <div class="member-info">
                            <img src="../assets/images/community/프로필 사진.png" alt="프로필 사진">
                            <span class="member-name">나무조하</span>
                        </div>
                        <button class="member-comment-modify">수정</button>
                    </div>
                    <div class="member-comment-box">
                        <span class="member-comment">소나무 인가요? 좋네요.</span>
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
                            <span class="member-name">캣대디</span>
                        </div>
                        <button class="member-comment-modify">수정</button>
                    </div>
                    <div class="member-comment-box">
                        <span class="member-comment">포인트 나눔 부탁드려요~~~</span>
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
                            <span class="member-name">쓰소미</span>
                        </div>
                        <button class="member-comment-modify none">수정</button>
                    </div>
                    <div class="member-comment-box">
                        <span class="member-comment">요즘 날씨에 건강 유의하세요~ 공감 꾹 누르고 갑니당😊</span>
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
                            <span class="member-name">강이주인</span>
                        </div>
                        <button class="member-comment-modify none">수정</button>
                    </div>
                    <div class="member-comment-box">
                        <span class="member-comment">
                        	제 헤드셋 여기 있나요?
						</span>
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
                            <span class="member-name">고령신씨</span>
                        </div>
                        <button class="member-comment-modify none">수정</button>
                    </div>
                    <div class="member-comment-box">
                        <span class="member-comment">
                        	체조 3회 실시.
						</span>
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