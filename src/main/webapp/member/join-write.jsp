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
		MemberVO newMember = (MemberVO)session.getAttribute("newMember");
	    if (newMember == null) {
    %>
		<script>
       		alert("세션정보가 만료되어 로그인 페이지로 이동합니다.");
	    	// 세션 정보가 없으면 로그인 페이지로 리디렉션
       		location.href = "<%= request.getContextPath() %>/member/login.member";
    	</script>
	<%        
       	return;
   		}
	%>
	
	<img src="../assets/images/member/logo-login.png" alt="Personal Buddy 로고" class="logo">

    <div class="join-container">
    	<form action="join-profile.member" method="post">
	        <!-- 첫 번째 입력 박스 -->
	        <div class="input-group">
        		<!-- id(email 주소) -->
	            <div class="input-wrapper" id="id-wrapper" style="border-radius: 10px 10px 0px 0px;">
	                <img src="../assets/images/member/message-icon.png" class="input-icon">
	                <input type="email" id="email" placeholder="아이디 (이메일 주소)" name="memberEmail" required />
	                <button id="mail-button" type="button" onclick="sendMail()">인증메일 발송</button>
	            </div>
	            <div class="input-wrapper" id="id-auth-wrapper">
	                <img src="../assets/images/member/send-mail.png" class="input-icon">
	                <input type="text" id="mail-authCode" maxlength="6" placeholder="인증번호 6자리 입력" name="mailAuthCode" />
	                <div class="email-confirm-check">
	                	<span class="email-confirm" onclick="mailCheck()">확인</span>
	                	<span style="width:50px; color: var(--gray4); font-size: var(--h9); text-align: center;" class="confirm-countdown" id="email-confirm-time"></span>
                	</div>
	                
	            </div>
	            <!-- 비밀번호 -->
	            <div class="input-wrapper" id="password-wrapper" style="border-radius: 0px 0px 10px 10px;">
	                <img src="../assets/images/member/lock-icon.png" class="input-icon">
	                <input type="password" id="password" placeholder="비밀번호" name = "memberPassword" required>
	                <img src="../assets/images/member/see-password-icon-false.png" class="toggle-password" onclick="togglePassword()">
	            </div>
	            
	            <div class="space" style="height: 90px;">
	            	<span id="mail-fail-message"></span>
	            	<span id="password-fail-message"></span>
	            </div>
	            
	            <!-- 이름 -->
	            <div class="input-wrapper" id="name-wrapper" style="border-radius: 10px 10px 0px 0px;">
	                <img src="../assets/images/member/smile.png" class="input-icon">
	                <input type="text" id="name" placeholder="이름"  name= "memberName" required>
	                <!-- 성별 선택 -->
                	<div class="gender-select">
                		<label>
	                		<input class="gender-select-radio" id="genderMale" type="radio" name="memberGender" value="남성" required/>
		                	<span style="border-radius: 10px 0px 0px 10px;">남성</span>
	                	</label>
	                	<label>
		                	<input class="gender-select-radio" id="genderFemale"  type="radio" name="memberGender" value="여성" required/>
		                	<span style="border-radius: 0px 10px 10px 0px;">여성</span>
	                	</label>
                	</div>
	            </div>
	            
	        	<!-- 생년월일 -->
	            <div class="input-wrapper" id="birth-wrapper">
	                <img src="../assets/images/member/calendar-icon.png" id="birth-icon" class="input-icon" style="cursor: pointer;">
	                <input type="text" id="birth" name="memberBirth" placeholder="생년월일 선택" required>
	            </div>
	        	<!-- 통신사 선택 -->
	            <div class="input-wrapper" style="display: none">
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
	            <div class="input-wrapper" id="phone-wrapper">
	                <img src="../assets/images/member/phone-icon.png" class="input-icon">
	                <input type="tel" id="phone" placeholder="휴대전화번호" required>
	                <button id="phone-button" type="button" onclick="sendPhoneAuth()">인증번호 발송</button>
	            </div>
	        	<!-- 인증번호 -->
	            <div class="input-wrapper" id="phone-auth-wrapper" style="border-radius: 0px 0px 10px 10px;">
	                <img src="../assets/images/member/lock-icon.png" class="input-icon">
	                <input type="text" maxlength="4" id="phone-authcode" placeholder="인증번호 4자리 입력">
	                <div class="phone-confirm-check">
	                	<span class="phone-confirm" onclick="phoneCheck()">확인</span>
	                	<span style="width:50px; color: var(--gray4); font-size: var(--h9); text-align: center;" class="confirm-countdown" id="phone-confirm-time"></span>
                	</div>
	            </div>
	        </div>
	        
            <div class="space">
            	<span id="name-fail-message" style="display: none; font-weight: 300;">※ 이름은 필수 정보입니다.</span>
            	<span id="gender-fail-message"  style="display: none; font-weight: 300;">※ 성별을 입력해주세요.</span>
            	<span id="birth-fail-message"  style="display: none; font-weight: 300;">※ 생년월일을 입력해주세요.</span>
            	<span id="phone-fail-message"  style="display: none; font-weight: 300;"></span>
            </div>
	
	        <!-- 가입 버튼 -->
	        <button class="signup-btn">가입하기</button>
        </form>
    </div>
</body>
<script src="../assets/js/member/join-write.js"></script>
</html>