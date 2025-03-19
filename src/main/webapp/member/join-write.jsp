<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.app.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/global.css">
<link rel="stylesheet" href="../assets/css/member/join-write.css">
<title>Personal Buddy 회원가입</title>
</head>
<body>
	<%
		MemberVO newMember = (MemberVO)request.getAttribute("newMember");
	%>
	
	<img src="../assets/images/member/logo-login.png" alt="Personal Buddy 로고" class="logo">

    <div class="signup-container">
        <!-- 첫 번째 입력 박스 -->
        <div class="input-group">
        	<form action="join-profile.member" method="post">
	            <div class="input-wrapper">
	                <img src="../assets/images/member/message-icon.png" class="input-icon">
	                <input type="email" id="email" required onfocus="handleLabel('email', true)" onblur="handleLabel('email', false)" oninput="checkValue('email')">
	                <label for="email" class="floating-label">이메일 주소</label>
	            </div>
	            <div class="input-wrapper">
	                <img src="../assets/images/member/lock-icon.png" class="input-icon">
	                <input type="password" id="password" required onfocus="handleLabel('password', true)" onblur="handleLabel('password', false)" oninput="checkValue('password')">
	                <label for="password" class="floating-label">비밀번호</label>
	                <img src="../assets/images/member/see-password-icon-false.png" class="toggle-password" onclick="togglePassword()">
	            </div>
		        <!-- 성별 선택 -->
		        <div class="gender-group">
		            <label>이름</label>
		            <div class="gender-buttons">
		                <button type="button" class="gender-btn active">남자</button>
		                <button type="button" class="gender-btn">여자</button>
		            </div>
		        </div>
	        	<!-- 생년월일 -->
	            <div class="input-wrapper">
	                <img src="../assets/images/member/calendar-icon.png" class="input-icon">
	                <input type="text" id="birth" placeholder="생년월일 8자리">
	            </div>
	        	<!-- 통신사 선택 -->
	            <div class="input-wrapper">
	                <img src="../assets/images/member/wifi-icon.png" class="input-icon">
	                <select id="carrier">
	                    <option value="">통신사 선택</option>
	                    <option value="SKT">SKT</option>
	                    <option value="KT">KT</option>
	                    <option value="LGU+">LG U+</option>
	                </select>
	            </div>
	        	<!-- 휴대전화번호 -->
	            <div class="input-wrapper">
	                <img src="../assets/images/member/phone-icon.png" class="input-icon">
	                <input type="text" id="phone" placeholder="휴대전화번호">
	            </div>
	        	<!-- 인증번호 -->
	            <div class="input-wrapper">
	                <img src="../assets/images/member/lock-icon.png" class="input-icon">
	                <input type="text" id="verify-code" placeholder="인증번호 4자리 입력">
	                <button class="resend-btn">재요청</button>
	            </div>
	        </div>
	
	        <!-- 가입 버튼 -->
	        <button class="signup-btn">가입하기</button>
        </form>
    </div>
</body>
<script>
	function handleLabel(inputId, isFocused) {
	    const inputField = document.getElementById(inputId);
	    const label = inputField.nextElementSibling;
	
	    if (isFocused || inputField.value.trim() !== "") {
	        label.classList.add("filled");
	    } else {
	        label.classList.remove("filled");
	    }
	}
	
	function togglePassword() {
	    const passwordInput = document.getElementById("password");
	    const toggleIcon = document.querySelector(".toggle-password");
	
	    if (passwordInput.type === "password") {
	        passwordInput.type = "text";
	        toggleIcon.src = "../assets/images/member/see-password-icon-true.png";
	    } else {
	        passwordInput.type = "password";
	        toggleIcon.src = "../assets/images/member/see-password-icon-false.png";
	    }
	}
</script>
</html>