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
	                <input type="email" id="email" placeholder="아이디 (이메일 주소)" name="memberEmail" required>
	            </div>
	            <!-- 비밀번호 -->
	            <div class="input-wrapper" style="border-radius: 0px 0px 10px 10px;">
	                <img src="../assets/images/member/lock-icon.png" class="input-icon">
	                <input type="password" id="password" placeholder="비밀번호" required>
	                <img src="../assets/images/member/see-password-icon-false.png" class="toggle-password">
	            </div>
	            
	            <div id="space" style="height: 60px;">
	            </div>
	            
	            <!-- 이름 -->
	            <div class="input-wrapper" style="border-radius: 10px 10px 0px 0px;">
	                <img src="../assets/images/member/person-icon.png" class="input-icon">
	                <input type="text" id="name" placeholder="이름" required>
	                <!-- 성별 선택 -->
                	<div class="gender-select">
                		<label>
	                		<input onchange="checkState(this)" id="genderMale" type="radio" name="memberGender" />
		                	<span style="border-radius: 10px 0px 0px 10px;">남자</span>
	                	</label>
	                	<label>
		                	<input onchange="checkState(this)" id="genderFemale"  type="radio" name="memberGender" />
		                	<span style="border-radius: 0px 10px 10px 0px;">여자</span>
	                	</label>
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
	/* 인증 시간 체크용 변수 */
	let timer = null;
	let timeLeft = 0;
	/* 인증 시간 체크 함수 */
	document.querySelectorAll(".request-phone-confirm").forEach(eventTag => {
		eventTag.addEventListener("click", () => {
			document.getElementById("confirm-countdown").textContent = "";
			document.getElementById("confirm-countdown").style.color = "var(--gray4)";
			const requestTag = document.querySelector(".phone-confirm-check");
			requestTag.style.display = "flex";
			requestTag.style.flexDirection = "column";
			requestTag.style.alignItems = "center";
			timeLeft = <%= countdownSeconds %>;
			//1초마다 업데이트
			timer = setInterval(updateCountdown, 1000);
		})
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

	
</script>
</html>