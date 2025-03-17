<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- login.jsp -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personal Buddy 로그인</title>
    <link rel="stylesheet" href="./css/login-main.css">
</head>
<body>
    <img src="./image/project-logo-check.png" alt="Personal Buddy 로고" class="logo">
    <div class="login-container">
        <form action="login.jsp" method="POST">
            <div class="input-group">
                <label for="email">이메일</label>
                <div class="input-wrapper">
                    <input type="email" id="email" name="email" required>
                    <img src="./image/login-input-cancel-icon.png" alt="입력 취소" class="clear-input" onclick="clearInput('email')">
                </div>
            </div>
            <div class="input-group">
                <label for="password">비밀번호</label>
                <div class="input-wrapper">
                    <input type="password" id="password" name="password" required>
                    <img src="./image/login-input-cancel-icon.png" alt="입력 취소" class="clear-input" onclick="clearInput('password')">
                    <img src="./image/see-password-icon-false.png" alt="비밀번호 보기" class="toggle-password" onclick="togglePassword()">
                </div>
            </div>
            <div class="remember-me">
                <img src="./image/checkbox-icon-false.png" alt="로그인 상태 유지" class="checkbox-icon" onclick="toggleCheckbox(this)">
                로그인 상태 유지
            </div>
            <button type="submit" class="login-btn" disabled>로그인</button>
        </form>
        <div class="links">
            <a href="#">아이디 찾기</a> | <a href="#">비밀번호 찾기</a> | <a href="#">회원가입</a>
        </div>
    </div>

    <script>
        function togglePassword() {
            const passwordInput = document.getElementById("password");
            const toggleIcon = document.querySelector(".toggle-password");
            
            if (passwordInput.type === "password") {
                passwordInput.type = "text";
                toggleIcon.src = "./image/see-password-icon-true.png";
            } else {
                passwordInput.type = "password";
                toggleIcon.src = "./image/see-password-icon-false.png";
            }
        }
        
        function clearInput(inputId) {
            document.getElementById(inputId).value = "";
            document.querySelector(".login-btn").setAttribute("disabled", "true");
        }
        
        function toggleCheckbox(icon) {
            if (icon.src.includes("checkbox-icon-false.png")) {
                icon.src = "./image/checkbox-icon-true.png";
            } else {
                icon.src = "./image/checkbox-icon-false.png";
            }
        }
    </script>
</body>
</html>
