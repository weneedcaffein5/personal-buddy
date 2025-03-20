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

<!-- 생일 입력 용 FlatPickr 라이브러리 추가 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

<title>Personal Buddy 회원가입</title>
</head>
<body>
	<%
		MemberVO newMember = (MemberVO)request.getAttribute("newMember");
		
		/* 인증번호 체크 카운트 다운용 변수 (단위 : 초)*/
	    int countdownSeconds = 120;
	%>
	
	<img src="../assets/images/member/logo-login.png" alt="Personal Buddy 로고" class="logo">

    <div class="join-container">
        <!-- 첫 번째 입력 박스 -->
        <div class="input-group">
        	<form action="join-profile.member" method="post">
        		<!-- id(email 주소) -->
	            <div class="input-wrapper" style="border-radius: 10px 10px 0px 0px;">
	                <img src="../assets/images/member/message-icon.png" class="input-icon">
	                <input type="email" id="email" placeholder="아이디 (이메일 주소)" name="memberEmail"
	                value="<%= session.getAttribute("email") != null ? session.getAttribute("email") : "" %>" required />
	                <button id="mail-button" type="button" onclick="sendMail()">인증메일 발송</button>
	            </div>
	            <div class="input-wrapper">
	                <img src="../assets/images/member/send-mail.png" class="input-icon">
	                <input type="text" id="authCode" maxlength="6" placeholder="인증번호 6자리 입력" name="authCode">
	                <span class="email-confirm" onclick="mailCheck()">확인</span>
	            </div>
	            <!-- 비밀번호 -->
	            <div class="input-wrapper" style="border-radius: 0px 0px 10px 10px;">
	                <img src="../assets/images/member/lock-icon.png" class="input-icon">
	                <input type="password" id="password" placeholder="비밀번호" required>
	                <img src="../assets/images/member/see-password-icon-false.png" class="toggle-password" onclick="togglePassword()">
	            </div>
	            
	            <div id="space" style="height: 60px;">
	            </div>
	            
	            <!-- 이름 -->
	            <div class="input-wrapper" style="border-radius: 10px 10px 0px 0px;">
	                <img src="../assets/images/member/smile.png" class="input-icon">
	                <input type="text" id="name" placeholder="이름" required>
	                <!-- 성별 선택 -->
                	<div class="gender-select">
                		<label>
	                		<input onchange="checkState(this)" id="genderMale" type="radio" name="memberGender" value="남성"/>
		                	<span style="border-radius: 10px 0px 0px 10px;">남성</span>
	                	</label>
	                	<label>
		                	<input onchange="checkState(this)" id="genderFemale"  type="radio" name="memberGender" value="여성"/>
		                	<span style="border-radius: 0px 10px 10px 0px;">여성</span>
	                	</label>
                	</div>
	            </div>
	            
	        	<!-- 생년월일 -->
	            <div class="input-wrapper">
	                <img src="../assets/images/member/calendar-icon.png" id="birth-icon" class="input-icon" style="cursor: pointer;">
	                <input type="text" id="birth" placeholder="생년월일 선택">
	            </div>
	        	<!-- 통신사 선택 -->
	            <div class="input-wrapper">
	                <img src="../assets/images/member/wifi-icon.png" class="input-icon">
	                <select id="carrier">
	                    <option value="">통신사 선택</option>
	                    <option value="SKT">SKT</option>
	                    <option value="SKT알뜰">SKT 알뜰폰</option>
	                    <option value="KT">KT</option>
	                    <option value="KT알뜰">KT 알뜰폰</option>
	                    <option value="LGU+">LG U+</option>
	                    <option value="LGU+알뜰">LG U+ 알뜰폰</option>
	                </select>
	            </div>
	        	<!-- 휴대전화번호 -->
	            <div class="input-wrapper">
	                <img src="../assets/images/member/phone-icon.png" class="input-icon">
	                <input type="tel" id="phone" placeholder="휴대전화번호">
	                <div>
	                	<span class="request-phone-confirm">인증번호<br />요청</span>
	                </div>
	            </div>
	        	<!-- 인증번호 -->
	            <div class="input-wrapper" style="border-radius: 0px 0px 10px 10px;">
	                <img src="../assets/images/member/lock-icon.png" class="input-icon">
	                <input type="text" maxlength="4" id="phone-confirm-code" placeholder="인증번호 4자리 입력">
	                <div class="phone-confirm-check">
	                	<span style="width:50px; color: var(--gray4); font-size: var(--h9); text-align: center;" id="confirm-countdown"></span>
                		<span class="request-phone-confirm">재요청</span>
                	</div>
	            </div>
	        </div>
	
	        <!-- 가입 버튼 -->
	        <button type="button" class="signup-btn">가입하기</button>
        </form>
    </div>
</body>
<script>

	/**
	 * 이메일 인증번호 요청 (AJAX)
	 * - 사용자가 "인증번호 요청" 버튼을 클릭하면 실행됨
	 * - 서버의 `send-mail` 컨트롤러로 이메일을 전송하고 인증번호를 요청함
	 **/
	function sendMail() {
	    let email = document.getElementById("email").value; // 입력된 이메일 가져오기
	    let button = document.getElementById("mail-button");
	    
	    button.innerText = "메일 전송 중";
	    button.classList.remove("success");
	    button.classList.remove("fail");
	    button.classList.add("process");
	    
	    fetch("send-mail.member", { // AJAX 요청 (비동기)
	        method: "POST",
	        headers: { "Content-Type": "application/x-www-form-urlencoded" },
	        body: new URLSearchParams({ email: email }).toString()
	    })
	    .then(response => response.json()) // 서버에서 JSON 응답을 받음
	    .then(data => {
	    	if(data.sameId){
	    		button.classList.remove("process");
	    		button.innerText = "중복 메일";
	    	}
	    	if(data.success){
	    		button.classList.remove("process");
	    		button.classList.remove("fail");
	    		button.classList.add("success");
	    	}else{
	    		button.classList.remove("process");
		    	button.classList.remove("success");
	    		button.classList.add("fail");
	    	}
	    	
	    	button.innerText = data.message; // 메시지 표시
	    })
	    .catch(error => console.error("Error:", error)); // 에러 처리
	}
	
	 /**
     * 인증번호 확인 요청 (AJAX)
     * - 사용자가 "인증 확인" 버튼을 클릭하면 실행됨
     * - 서버의 `mail-check` 컨트롤러로 인증번호를 전송하고 검증 요청
     */
    function mailCheck() {
        let authCode = document.getElementById("authCode").value; // 입력된 인증번호 가져오기

        fetch("mail-check.member", { // AJAX 요청 (비동기)
	            method: "POST",
	            headers: { "Content-Type": "application/x-www-form-urlencoded" },
	            body: new URLSearchParams({ authCode: authCode }).toString()
	        })
	        .then(response => response.json()) // 서버에서 JSON 응답을 받음
	        .then(data => {
	            alert(data.message); // 인증 결과 메시지 출력
	        })
	        .catch(error => console.error("Error:", error)); // 에러 처리
    	}
	
		document.querySelectorAll("img").forEach(img => {
		img.addEventListener("dragstart", function (event) {
		    event.preventDefault();
		});
	});
	
	/* 인증 시간 체크용 변수 */
	let timer = null;
	let timeLeft = 0;
	/* 인증 시간 체크 함수 */
	document.querySelectorAll(".request-phone-confirm").forEach(eventTag => {
		eventTag.addEventListener("click", () => {
			document.getElementById("confirm-countdown").textContent = "";
			document.getElementById("confirm-countdown").style.color = "var(--gray4)";
			const requestTag = document.querySelector(".phone-confirm-check");
			requestTag.style.opacity = "1";
			timeLeft = <%= countdownSeconds %>;
			//1초마다 업데이트
			timer = setInterval(updateCountdown, 1000);
		})
	})
	
	// 기본 Flatpickr 적용
    flatpickr("#birth", {
        enableTime: false, // 시간 선택 비활성화
        dateFormat: "Y-m-d", // 날짜 형식 (예: 2024-03-19)
        minDate: "1900-01-01", // 최소 선택 가능 날짜
    });
	document.getElementById("birth-icon").addEventListener("click",() => {
		document.getElementById("birth")._flatpickr.open();
	})
	
	function checkState(radio){
		let checked = radio.value;
		
		document.querySelectorAll(".gender-select span").forEach(span => {
			span.style.zIndex = "0";
            span.style.backgroundColor = "var(--white)";
            span.style.color = "var(--gray4)";
            span.style.border = "1px solid var(--gray3)";
            span.style.fontWeight = "300";
        });
		
		let changeSpan = radio.nextElementSibling;
        if (checked) {
        	changeSpan.style.zIndex = "1";
        	changeSpan.style.border = "1px solid var(--main-green)";
        	changeSpan.style.backgroundColor = "var(--light-green)";
        	changeSpan.style.color = "var(--sub-green)";
        	changeSpan.style.fontWeight = "500";
        }
	}
	
	function updateCountdown() {
        let minutes = Math.floor(timeLeft / 60);
        let seconds = timeLeft % 60;
        let timerText = document.getElementById("confirm-countdown");

        // 두 자리 숫자로 표시 (ex: 05:00)
        timerText.textContent = 
            (minutes < 10 ? "0" : "") + minutes + ":" + (seconds < 10 ? "0" : "") + seconds;

        if (timeLeft > 0) {
            timeLeft--; // 1초씩 감소
        } else {
            clearInterval(timer); // 타이머 중지
            timerText.textContent = "시간 종료";
            timerText.style.color = "var(--warning-red)"
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