const modal = document.querySelector('.set-modal-container');
const modalTitle = document.getElementById('modal-title');
const modalMessage = document.getElementById('modal-message');
const modalInputArea = document.getElementById('modal-input-area');

let currentModalType = null;
let currentModalStep = 'check-password';

// 모달 열기
document.querySelectorAll('.open-modal-button').forEach(button => {
	button.addEventListener('click', () => {
		currentModalType = button.dataset.type;
		currentModalStep = 'check-password';
		modal.style.display = 'block';
		modalInputArea.innerHTML = '';

		switch (currentModalType) {
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
	});
});

// 모달 닫기
document.querySelector('.out-set-modal').addEventListener('click', () => {
	modal.style.display = 'none';
});
document.querySelector('.set-modal-no-button').addEventListener('click', () => {
	modal.style.display = 'none';
});

// 확인 버튼 이벤트
document.querySelector('.set-modal-ok-button').addEventListener('click', () => {
	if (currentModalType === 'password') {
		if(currentModalStep === 'change-password-success')
		{
			modal.style.display = 'none';
			currentModalStep = 'check-password';
			modalInputArea.innerHTML = '';
			modalMessage.textContent = '';
			
			return;
		}


		if (currentModalStep === 'check-password') {
			const oldPassword = document.getElementById('oldPassword').value;

			fetch('/personal-buddy/mypage-info.mypage', {
				method: 'POST',
				headers: {
					'Content-Type': 'application/x-www-form-urlencoded'
				},
				body: new URLSearchParams({ password: oldPassword, mode: 'check' })
			})
				.then(result => result.text())
				.then(text => {
					let data;
					try {
						data = JSON.parse(text);
					} catch (err) {
						console.error('JSON 파싱 오류:', err);
						alert('서버에서 잘못된 응답이 왔습니다');
						return;
					}

					const input = document.getElementById('oldPassword');
					const modalBottom = document.querySelector('.set-modal-bottom');
					const errorMessage = document.querySelector('.modal-error-message');
					if (errorMessage) errorMessage.remove();
					input.classList.remove('error');

					if (data.result === 'fail') {
						input.classList.add('error');

						const message = document.createElement('div');
						message.className = 'modal-error-message';
						message.textContent = '틀린 비밀번호입니다';
						input.after(message);

					} else {
						modalBottom.classList.add('change');
						modalInputArea.innerHTML = `
              <input type="password" id="newPassword" placeholder="새 비밀번호" class="modal-input" />
              <input type="password" id="confirmPassword" placeholder="비밀번호 재입력" class="modal-input" />
            `;
						modalMessage.textContent = '새 비밀번호를 입력해주세요';
						currentModalStep = 'change-password';
					}
				})
				.catch(err => {
					console.error('Fetch 에러:', err);
					alert('서버 통신 중 문제가 발생했습니다.');
				});
		}

		else if (currentModalStep === 'change-password') {
			console.log(currentModalStep);
			const newPassword = document.getElementById('newPassword').value;
			const confirmPassword = document.getElementById('confirmPassword').value;

			document.querySelectorAll('.modal-error-message').forEach(el => el.remove());
			document.querySelectorAll('.modal-input').forEach(el => el.classList.remove('error'));

			const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,16}$/;

			if (!passwordRegex.test(newPassword)) {
				const input = document.getElementById('newPassword');
				input.classList.add('error');

				const message = document.createElement('div');
				message.className = 'modal-error-message';
				message.textContent = '8~16자의 영문 대/소문자, 숫자, 특수문자를 사용해 주세요.';
				input.after(message);
				return;
			}

			if (newPassword !== confirmPassword) {
				const input = document.getElementById('confirmPassword');
				input.classList.add('error');

				const message = document.createElement('div');
				message.className = 'modal-error-message';
				message.textContent = '비밀번호가 일치하지 않습니다.';
				input.after(message);
				return;
			}

			fetch('/personal-buddy/mypage-info.mypage', {
				method: 'POST',
				headers: {
					'Content-Type': 'application/x-www-form-urlencoded'
				},
				body: new URLSearchParams({ newPassword, mode: 'change' })
			})
				.then(res => res.text())
				.then(text => {
					let data;
					try {
						data = JSON.parse(text);
					} catch (err) {
						console.error('JSON 파싱 오류:', err);
						alert('서버 응답이 올바르지 않습니다.');
						return;
					}

					if (data.result === 'success') {
						alert('비밀번호가 성공적으로 변경되었습니다!');
						currentModalStep = 'change-password-success';
						
						modalInputArea.innerHTML = '';
						modalMessage.textContent = '비밀번호가 변경되었습니다.'
						document.querySelector('.set-modal-bottom').classList.remove('change');	
						const cancelButton = document.querySelector('.set-modal-no-button');
						if (cancelButton) cancelButton.remove();
					} else {
						alert('비밀번호 변경에 실패했습니다.');
					}
				})
				.catch(err => {
					console.error('비밀번호 변경 요청 실패:', err);
					alert('서버와의 통신 중 오류가 발생했습니다.');
				});
		}
	}


});

// 실시간 유효성 검사
document.addEventListener('input', (e) => {
	const input = e.target;

	if (input.id === 'newPassword') {
		const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,16}$/;

		const existingError = input.parentElement.querySelector('.modal-error-message');
		if (existingError) existingError.remove();
		input.classList.remove('error');

		if (input.value.length >= 8 && !passwordRegex.test(input.value)) {
			input.classList.add('error');

			const message = document.createElement('div');
			message.className = 'modal-error-message';
			message.textContent = '8~16자의 영문 대/소문자, 숫자, 특수문자를 사용해 주세요.';
			input.after(message);
		}
	}
});
