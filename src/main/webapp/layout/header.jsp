<%@page import="com.app.dto.MemberProfileDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	Long loginId = (Long)session.getAttribute("loginId");
	MemberProfileDTO memberProfile = (MemberProfileDTO)session.getAttribute("memberProfile");
%>

<div class="header-container">
    <div class="header-wrapper">
        <div class="leftheader">
           <a href="#" class="logo"><img src="<c:url value='/assets/images/mypage/logo.png' />" alt="로고"></a>
            <a href="<c:url value='/main/main.main' />">일정 관리</a>
            <a href="<c:url value='/contents/contents-mytree.jsp' />">컨텐츠</a>
            <a href="<c:url value='../event/event-main.jsp' />">이벤트</a>
            <a href="<c:url value='/community/community-main.community' />">커뮤니티</a>
            <a href="<c:url value='../customer-service/customer-service.jsp' />">고객센터</a>
        </div>
        <div class="rightheader">
        	<%
        		if(loginId == null){
     		%>
       			<a href="<c:url value='/member/join-agree.member' />">회원가입</a>
                <a href="<c:url value='/member/login.member' />">로그인</a>
            <%
        		}else{
      		%>
            		<a id="profile-nickname" href="<c:url value='/myPage/mypage-mytree?id=<%=loginId%>' />">
            			<img class="profile-img" src="../<%= memberProfile.getMemberImgPath() + memberProfile.getMemberImgName()%>" alt="프로필 이미지">
            			<%=memberProfile.getMemberNickName() %>
            		</a>
            		<a href="<c:url value='/member/logout.member' />">로그아웃</a>
            <%
        		}
        	%>
        </div>
    </div>
</div>
<script src="../assets/js/header.js"></script>