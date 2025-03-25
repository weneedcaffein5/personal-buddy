<%@page import="com.app.vo.MemberImageVO"%>
<%@page import="com.app.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/global.css">
<link rel="stylesheet" href="../assets/css/member/join-profile.css">

<title>프로필 작성</title>
</head>
<body>
	<%
		MemberVO newMember = (MemberVO)session.getAttribute("newMember");
		MemberImageVO newMemberImage = (MemberImageVO)session.getAttribute("newMemberImage");
		
		System.out.println(newMember);
		System.out.println(newMemberImage);
		
	%>
	
	<img src="../assets/images/member/logo-login.png" alt="Personal Buddy 로고" class="logo">

    <div class="join-container">
    	<form action="join-ok.member" method="post">
        	<!-- 첫 번째 입력 박스 -->
        	<div class="input-group">
        	
        		<!-- id(email 주소) -->
	            <div class="wrapper">
	            	<div id="image-wrapper">
		            	<button type="button" id="image-plus-button"></button>
		                <img 
		                	src="<%= newMemberImage.getMemberImagePath() != null ? newMemberImage.getMemberImagePath() : "../assets/images/member/profile-default.png" %>" id="profile-image">
	                </div>
	            </div>
	            
	            <!-- 이름 -->
	            <div class="input-wrapper" id="nickname-wrapper" style="border-radius: 10px 10px 0px 0px;">
	                <img src="../assets/images/member/smile.png" class="input-icon">
	                <input type="text" id="nickname" placeholder="이름"  name= "memberNickname"
	                value="<%= newMember.getMemberName() != null ? newMember.getMemberName() : "" %>" required>
                	<div class="gender-select">
	                	<span>남성</span>
	                	<span>여성</span>
                	</div>
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
</html>