<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- login.jsp -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../assets/css/member/login.css">
    <title>Personal Buddy 로그인</title>
</head>
<body>
    <img src="../assets/images/member/logo-login.png" alt="Personal Buddy 로고" class="logo">
    <div class="login-container">
    	<div class="login-select">
    		<span style="border-radius: 0px 30px 0px 0px;">아이디 로그인</span>
    		<span style="background-color: #D9D9D9; border-radius: 0px 30px 0px 0px;">간편 로그인</span>
    	</div>
        <form action="login-ok.member" method="POST">
        	<div class="login-fail">
        		<span >아이디 혹은 비밀번호를 잘못 입력하셨거나 등록되지 않은 아이디 입니다.</span>
        		<!-- style="display: none;" -->
        	</div>
            <div class="input-group">
                <div class="input-wrapper">
                    <input type="email" id="email" name="email" required onfocus="handleLabel('email', true)" onblur="handleLabel('email', false)" oninput="checkValue('email')">
			        <label for="email" class="floating-label">이메일</label>
			        <img src="../assets/images/member/login-input-cancel-icon.png" alt="입력 취소" class="clear-input" onclick="clearInput('email')">
                </div>
            </div>
            <div class="input-group">
                <div class="input-wrapper">
                    <input type="password" id="password" name="password" required onfocus="handleLabel('password', true)" onblur="handleLabel('password', false)" oninput="checkValue('password')">
			        <label for="password" class="floating-label">비밀번호</label>
			        <img src="../assets/images/member/login-input-cancel-icon.png" alt="입력 취소" class="clear-input" onclick="clearInput('password')">
			        <img src="../assets/images/member/see-password-icon-false.png" alt="비밀번호 보기" class="toggle-password" onclick="togglePassword()">
                </div>
            </div>
            <div class="remember-me" >
                <img src="../assets/images/member/checkbox-icon-false.png" alt="로그인 상태 유지" class="checkbox-icon" onclick="toggleCheckbox(this)">
                <span onclick="toggleCheckbox(document.querySelector('.checkbox-icon'))">로그인 상태 유지</span>
            </div>
            <button class="login-btn" disabled>로그인</button>
        </form>
    </div>
	<div class="links">
            <a href="#">아이디 찾기</a> | <a href="#">비밀번호 찾기</a> | <a href="join-agree.member">회원가입</a>
    </div>
    
    <script>
    document.addEventListener("DOMContentLoaded", function () {
        const inputs = document.querySelectorAll(".input-group input");
        const loginButton = document.querySelector(".login-btn");

        function checkInputs() {
            let allFilled = true;
            inputs.forEach(input => {
                if (input.value.trim() === "") {
                    allFilled = false;
                    input.classList.remove("filled");
                } else {
                    input.classList.add("filled");
                }
            });

            if (allFilled) {
                loginButton.classList.add("active");
                loginButton.removeAttribute("disabled");
            } else {
                loginButton.classList.remove("active");
                loginButton.setAttribute("disabled", "true");
            }
        }

        inputs.forEach(input => {
            input.addEventListener("input", checkInputs);
        });

        checkInputs(); // 페이지 로드 시 실행
    });
    
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
    
    function clearInput(inputId) {
        document.getElementById(inputId).value = "";
        document.getElementById(inputId).classList.remove("filled");
        
        document.querySelector(".login-btn").classList.remove("active");
        document.querySelector(".login-btn").setAttribute("disabled", "true");
        
        checkInputs();
    }
    
    function toggleCheckbox(icon) {
        if (icon.src.includes("checkbox-icon-false.png")) {
            icon.src = "../assets/images/member/checkbox-icon-true.png";
        } else {
            icon.src = "../assets/images/member/checkbox-icon-false.png";
        }
    }
	</script>
</body>
</html>
