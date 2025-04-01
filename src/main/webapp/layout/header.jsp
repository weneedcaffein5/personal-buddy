<%@page import="com.app.dto.MemberProfileDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	Long loginId = (Long)session.getAttribute("loginId");
	MemberProfileDTO loginProfile = (MemberProfileDTO)session.getAttribute("loginProfile");
   	if (loginProfile == null || loginId == null) {
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
        		if(loginId == null || loginProfile == null){
     		%>
       			<a href="<c:url value='/member/join-agree.member' />">회원가입</a>
                <a href="<c:url value='/member/login.member' />">로그인</a>
            <%
        		}else{
      		%>
      		
            		<a id="profile-nickname" href="../mypage/mypage-mytree.mypage?id=<%=loginId%>">
            			<img class="profile-img" src="../<%= loginProfile.getMemberImgPath() + loginProfile.getMemberImgName()%>" alt="프로필 이미지">
            			<%=loginProfile.getMemberNickName() %>
            		</a>
            		<a href="<c:url value='/member/logout.member' />">로그아웃</a>
            <%
        		}
        	%>
        </div>
    </div>
</div>
<script src="../assets/js/header.js"></script>