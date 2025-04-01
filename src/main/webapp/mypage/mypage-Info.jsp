<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/global.css" />
<link rel="stylesheet" href="../assets/css/header.css">
<link rel="stylesheet" type="text/css"
	href="../assets/css/mypage/mypage-info.css" />
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<!-- 배너 -->

	<div class="body">
		<div class="container">
			<!-- 왼쪽 사이드바 (프로필, 링크) -->
			<div class="sidebar">
				<div class="profile">
					<span><img
						src="../assets/images/mypage/profile-default-image.png"></span>
				</div>
				<div class="profile-setting">
					<div class="nickname">
						<span>나는신이다</span>
					</div>
					<div class="status-message">
						<span>반가워요</span>
					</div>
				</div>
				<div class="mypage">
					<div class="tap-name">
						<img class="icon" src="../assets/images/mypage/mypage-icon.png">
						<span>마이페이지</span>
					</div>
					<div class="a-wrapper">
						<a class="link" href="mypage-mytree.mypage">나의 나무</a>
					</div>
					<div class="a-wrapper">
						<a class="link" href="mypage-myachievement.mypage">나의 업적</a>
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
								<input type="text" id="email" placeholder="kimys31892@gmail.com"
									required class="custom-input" />

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
								<input type="text" id="name" placeholder="김영수" required
									class="custom-input" />
								<button class="open-modal-button" data-type="name">이름
									변경</button>
							</div>
						</div>

						<div class="input-container">
							<label for="birth">생년월일</label>
							<div class="input-wrapper">
								<input type="text" id="birth" placeholder="2001.11.12" required
									class="custom-input" />
								<button class="open-modal-button" data-type="birth">생년월일
									변경</button>
							</div>
						</div>

						<div class="input-container">
							<label for="phone">전화번호</label>
							<div class="input-wrapper">
								<input type="text" id="phone" placeholder="010-2330-3189"
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
	<div class="set-modal-container" style="display: none;">
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
<script>
	const modal = document.querySelector('.set-modal-container');
	const modalTitle = document.getElementById('modal-title');
	const modalMessage = document.getElementById('modal-message');
	const modalInputArea = document.getElementById('modal-input-area');
	
	let currentModalType = null;
	
	document.querySelectorAll('.open-modal-button').forEach(button => {
		button.addEventListener('click', () => {
			currentModalType = button.dataset.type;
			modal.style.display = 'block';
			
			// 초기화
			modalInputArea.innerHTML = '';
			
			switch (type) {
			case 'password':
				modalTitle.textContent = '비밀번호 변경';
				modalMessage.textContent = '기존 비밀번호를 입력해주세요';
				modalInputArea.innerHTML = `
					<input type="password" id="oldPassword" placeholder="기존 비밀번호" class="modal-input" />
				`;
				break;

			case 'name':
				modalTitle.textContent = '이름 변경';
				modalMessage.textContent = '새 이름을 입력해주세요';
				modalInputArea.innerHTML = `
					<input type="text" id="newName" placeholder="새 이름" class="modal-input" />
				`;
				break;

			case 'birth':
				modalTitle.textContent = '생년월일 변경';
				modalMessage.textContent = '생년월일을 입력해주세요';
				modalInputArea.innerHTML = `
					<input type="text" id="newBirth" placeholder="YYYY.MM.DD" class="modal-input" />
				`;
				break;

			case 'phone':
				modalTitle.textContent = '전화번호 변경';
				modalMessage.textContent = '전화번호를 입력해주세요';
				modalInputArea.innerHTML = `
					<input type="text" id="newPhone" placeholder="010-0000-0000" class="modal-input" />
				`;
				break;
		}
		})
	})
	// 모달 닫기
	document.querySelector('.out-set-modal').addEventListener('click', () => {
	modal.style.display = 'none';
	});
	document.querySelector('.set-modal-no-button').addEventListener('click', () => {
	modal.style.display = 'none';
	});
	
	
	document.querySelector('.set-modal-ok-button').addEventListener('click', () => {
		if (currentModalType === 'password') {
			const oldPassword = document.getElementById('oldPassword').value;

			// 폼 데이터 형식으로 보내기 (key=value)
			const formData = new URLSearchParams();
			formData.append('password', oldPassword);

			fetch('/mypage-info.mypage', {
				method: 'POST',
				headers: {
					'Content-Type': 'application/x-www-form-urlencoded'
				},
				body: formData
			})
			.then(res => res.json())
			.then(data => {
				const input = document.getElementById('oldPassword');
				const errorMessage = document.querySelector('.modal-error-message');
				if (errorMessage) 
				errorMessage.remove();
				input.classList.remove('error');

				if (data.result === 'fail') {
					input.classList.add('error');
					const message = document.createElement('div');
					message.className = 'modal-error-message';
					message.textContent = '틀린 비밀번호입니다';
					input.after(message);
				} else {
					alert('비밀번호 확인 성공!');
					modal.style.display = 'none';
				}
			});
		}
	});
</script>
</html>