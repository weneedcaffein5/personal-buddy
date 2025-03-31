<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

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

</body>
</html>