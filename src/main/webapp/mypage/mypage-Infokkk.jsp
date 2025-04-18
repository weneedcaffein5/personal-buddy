<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/global.css" />
<link rel="stylesheet" href="../assets/css/header.css">
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-info.css" />
<title>마이페이지-계정설정</title>
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<!-- 배너 -->

	<div class="body">
        <div class="container">
        <!-- 왼쪽 사이드바 (프로필, 링크) -->
            <div class="sidebar">
                <div class="profile">
                    <img src="../${loginProfile.memberImgPath}${loginProfile.memberImgName}" alt="프로필 이미지">
                </div>
                <div class="profile-setting">
                	<div class="nickname">
	                    <span>${loginProfile.memberNickName}</span>                	
                	</div>
                	<div class="status-message">
	                    <span>${loginProfile.memberComment}</span>                	
                	</div>
                </div>
                <div class="mypage">
                    <div class="tap-name">
                    	<img class="icon" src="../assets/images/mypage/mypage-icon.png">
                    	<span>마이페이지</span>
                    </div>
                    <div class="a-wrapper">
                    	<a id="now" class="link" href="mypage-mytree.mypage?id=${ loginId }">나의 나무</a>
                    </div>
                    <div class="a-wrapper">
                    	<a class="link" href="mypage-myachievement.mypage?id=${ loginId }">나의 업적</a>
                    </div>
                </div>
				<div class="community">
					<div class="tap-name">
						<img class="icon" src="../assets/images/mypage/community-icon.png">
						<span>커뮤니티</span>
					</div>
					<div class="a-wrapper">
						<a class="link" href="mypage-myposts.jsp">내 게시물</a>
					</div>
					<div class="a-wrapper">
						<a class="link" href="#">내가 쓴 댓글</a>
					</div>
				</div>
				<div class="myinfo">
					<div class="tap-name">
						<img class="icon" src="../assets/images/mypage/mypage-icon.png">
						<span>내 정보</span>
					</div>
					<div class="a-wrapper">
						<a class="link" href="#">프로필 설정</a>
					</div>
					<div class="a-wrapper">
						<a id="select" class="link" href="#">계정 설정</a>
					</div>
					<div class="a-wrapper">
						<a class="link" href="#">포인트 내역</a>
					</div>
					<div class="a-wrapper">
						<a class="link" href="#">알림 내역</a>
					</div>
					<div class="a-wrapper">
						<a class="link" href="#">추전 정보 수정</a>
					</div>
				</div>
			</div>

			<div class="right-contentbox">
				<div class="info">
					<div class="info-left">
						<div>
							<span class="info-style">계정 정보를 변경할 수 있습니다.</span>
						</div>
						<div class="go">
							<span class="go-style">계정 설정</span>
						</div>
					</div>
				</div>
				<div class="content-wrapper">
					<div class="content-container">
						<div class="input-container">
							<label for="email">이메일</label>
							<div class="input-wrapper">
								<input type="text" id="email"
									placeholder="${member.memberEmail}" required
									class="custom-input" />

							</div>
						</div>

						<div class="input-container">
							<label for="password">비밀번호</label>
							<div class="input-wrapper">
								<input type="text" id="password" placeholder="최종 변경일 : 2월 28일"
									required class="custom-input" />
								<button class="open-modal-button" data-type="password">비밀번호
									변경</button>
							</div>
						</div>

						<div class="input-container">
							<label for="name">이름</label>
							<div class="input-wrapper">
								<input type="text" id="name" placeholder="${member.memberName}"
									required class="custom-input" />
								<button class="open-modal-button" data-type="name">이름
									변경</button>
							</div>
						</div>

						<div class="input-container">
							<label for="birth">생년월일</label>
							<div class="input-wrapper">
								<fmt:formatDate value="${member.memberBirth}"
									pattern="yyyy.MM.dd" var="birthFormatted" />
								<input type="text" id="birth" placeholder="${birthFormatted}"
									required class="custom-input" />

								<button class="open-modal-button" data-type="birth">생년월일
									변경</button>
							</div>
						</div>

						<div class="input-container">
							<label for="phone">전화번호</label>
							<div class="input-wrapper">
								<input type="text" id="phone" placeholder="${member.memberPhone}"
									required class="custom-input" />
								<button class="open-modal-button" data-type="number">전화번호
									변경</button>
							</div>
						</div>
					</div>
					<button class="account-delete">계정 삭제</button>
				</div>
			</div>
		</div>
	</div>
	<div class="set-modal-container">
		<div class="set-modal-background-conntaier">
			<div class="set-modal-top">
				<span id="modal-title">모달 제목</span>
				<button class="out-set-modal">X</button>
			</div>

			<div class="set-modal-bottom">
				<div class="modal-contents-wrapper">
					<span id="modal-message">메시지 들어갈 자리</span>
					<div id="modal-input-area"></div>
				</div>
				<div class="modal-button-wrapper">
					<button class="set-modal-ok-button">확인</button>
					<button class="set-modal-no-button">취소</button>
				</div>
			</div>
		</div>
		<div class="black-background"></div>
	</div>
</body>
<script src="../assets/js/mypage/mypage-info.js"></script>
</html>