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
                     
        	</div>
    	</div>
    </div>
</body>
</html>