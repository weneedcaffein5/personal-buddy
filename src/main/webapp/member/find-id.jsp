<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/global.css">
<link rel="stylesheet" href="../assets/css/member/find-id.css">
<title>아이디 찾기</title>
</head>
<body>
	<div style="display: flex; flex-direction: column; align-items: center;">
	    <div class="container" style="width: 460px;">
	    	<div style="width: 460px; display: flex; flex-direction: column; align-items: center; margin: 60px 0px;">
				<img src="../assets/images/member/logo-login.png" alt="Personal Buddy 로고" class="logo">
			</div>
			<div class="title" style="display: flex; flex-direction: column; gap: 10px;">
				<span style="line-height: 30px; border-bottom: 1px solid var(--gray2); font-size: var(--h7); font-weight: 300">아이디 찾기</span>
			</div>
			<div class="sub-title" style="display: flex; flex-direction: column; align-items: center;">
				<span style="text-align: center; line-height: 40px; font-size: var(--h5); margin: 40px 0px; font-weight: 300">본인확인 SMS 인증</span>
			</div>
			
			<div class="inputs" style="display: flex; flex-direction: column; align-items: center; gap: 20px;">
				<!-- 이름 -->
	            <div class="input-wrapper" id="name-wrapper" style="border-radius: 10px 10px 10px 10px;">
	                <img src="../assets/images/member/smile.png" class="input-icon">
	                <input type="text" id="name" placeholder="이름"  name= "memberName" required>
	            </div>
				<!-- 휴대전화번호 -->
			    <div class="input-wrapper" id="phone-wrapper" style="border-radius: 10px 10px 10px 10px;">
			        <img src="../assets/images/member/phone-icon.png" class="input-icon">
			        <input type="tel" id="phone" placeholder="휴대전화번호" required>
			        <button id="phone-button" type="button" onclick="sendPhoneAuth()">인증번호 발송</button>
			    </div>
				<!-- 인증번호 -->
			    <div class="input-wrapper" id="phone-auth-wrapper" style="border-radius: 10px 10px 10px 10px;">
			        <img src="../assets/images/member/lock-icon.png" class="input-icon">
			        <input type="text" maxlength="4" id="phone-authcode" placeholder="인증번호 4자리 입력">
			        <div class="phone-confirm-check">
			        	<span class="phone-confirm" onclick="phoneCheck()">확인</span>
			        	<span style="width:50px; color: var(--gray4); font-size: var(--h9); text-align: center;" class="confirm-countdown" id="phone-confirm-time"></span>
			       	</div>
			    </div>
		    </div>
		    
	        <!-- 가입 버튼 -->
	        <button class="signup-btn">다음</button>
	    </div>
    </div>

</body>
</html>