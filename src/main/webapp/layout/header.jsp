<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/global.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/header.css" />
<title>헤더</title>
</head>
<body>
	<div class="header-container">
        <div class="header-wrapper">
            <div class="leftheader">
            	<a href="#" class="logo"><img src="../assets/images/mypage/logo.png" alt="로고"></a>
                <a href="../main/main.jsp">일정 관리</a>
                <a href="#">컨텐츠</a>
                <a href="../event/event-main.jsp">이벤트</a>
                <a href="../community/community.jsp">커뮤니티</a>
                <a href="#">고객센터</a>
            </div>
            <div class="rightheader">
                <a href="../member/join-agree.jsp">회원가입</a>
                <a href="../member/login.jsp">로그인</a>
            </div>
        </div>
    </div>
</body>
</html>