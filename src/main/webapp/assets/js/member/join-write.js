/*이미지 드래그 방지용*/
document.querySelectorAll("img").forEach(img => {
	img.addEventListener("dragstart", function (event) {
    	event.preventDefault();
	});
});
/**
 * 이메일 인증번호 요청 (AJAX)
 * - 사용자가 "인증번호 요청" 버튼을 클릭하면 실행됨
 * - 서버의 `send-mail` 컨트롤러로 이메일을 전송하고 인증번호를 요청함
 **/
function sendMail() {
	let idWrapper = document.getElementById("id-wrapper");
	let idAuthWrapper = document.getElementById("id-auth-wrapper");
    let email = document.getElementById("email").value; // 입력된 이메일 가져오기
    let button = document.getElementById("mail-button");
    
	idWrapper.style.border = "1px solid var(--gray2)";
	idAuthWrapper.style.border = "1px solid var(--gray2)";
	idAuthWrapper.style.zIndex = 0;
	
    button.innerText = "메일 전송 중";
    button.classList.remove("success");
    button.classList.remove("fail");
    button.classList.add("process");
    
    fetch("send-mail.member", { // AJAX 요청 (비동기)
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: new URLSearchParams({ email: email }).toString()
    })
    .then(resp => resp.json()) // 서버에서 JSON 응답을 받음
    .then(data => {
    	if(data.sameId){
			idWrapper.style.border = "1px solid var(--warning-red)";
			idAuthWrapper.style.border = "var(--warning-red)";
			idAuthWrapper.style.zIndex = 1;
    		button.classList.remove("process");
    		button.innerText = "중복 메일";
    	}else{
			if(data.sendMailResult){
				button.classList.remove("process");
				button.classList.remove("fail");
				button.classList.add("success");
			}else{
				idWrapper.style.border = "1px solid var(--warning-red)";
				idAuthWrapper.style.border = "1px solid var(--warning-red)";
				idAuthWrapper.style.zIndex = 1;
				button.classList.remove("process");
				button.classList.remove("success");
				button.classList.add("fail");
			}
		}
		
    	button.innerText = data.sendMailResultMessage; // 메시지 표시
    })
    .catch(error => console.error("Error:", error)); // 에러 처리
}

 /**
 * 인증번호 확인 요청 (AJAX)
 * - 사용자가 "인증 확인" 버튼을 클릭하면 실행됨
 * - 서버의 `mail-check` 컨트롤러로 인증번호를 전송하고 검증 요청
 */
function mailCheck() {
	const idWrapper = document.getElementById("id-wrapper");
	const idAuthWrapper = document.getElementById("id-auth-wrapper");
	const mailCheckMessage = document.getElementById("mail-fail-message");
    let mailAuthCode = document.getElementById("mail-authCode").value; // 입력된 인증번호 가져오기
	
	idWrapper.style.border = "1px solid var(--gray2)";
	idAuthWrapper.style.border = "1px solid var(--gray2)";
	idAuthWrapper.style.zIndex = 0;
	mailCheckMessage.style.opacity = 0;

    fetch("mail-check.member", { // AJAX 요청 (비동기)
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: new URLSearchParams({ mailAuthCode: mailAuthCode }).toString()
    })
    .then(resp => resp.json()) // 서버에서 JSON 응답을 받음
    .then(data => {
		if(data.mailCheckResult){
			idWrapper.style.border = "1px solid var(--main-green)";
			idAuthWrapper.style.border = "1px solid var(--main-green)";
			idAuthWrapper.style.zIndex = 1;
			
			
			mailCheckMessage.style.opacity = 1;
			mailCheckMessage.style.color = "var(--main-green)";
			mailCheckMessage.innerText = "※ 이메일 인증 완료"
		}else{
			idWrapper.style.border = "1px solid var(--warning-red)";
			idAuthWrapper.style.border = "1px solid var(--warning-red)";
			idAuthWrapper.style.zIndex = 1;
			
			alert(data.mailCheckResultMessage); // 인증 결과 메시지 출력	
			
			mailCheckMessage.style.opacity = 1;
			mailCheckMessage.style.color = "var(--warning-red)";
			mailCheckMessage.innerText = "※ 이메일 인증 실패"
		}
        
	})
	.catch(error => console.error("Error:", error)); // 에러 처리
}

document.getElementById("password").addEventListener("blur", (e) => {
    let password = e.target.value;
	const passwordWrapper = document.getElementById("password-wrapper");
	const passWordFailMessage = document.getElementById("password-fail-message");
	
	passWordFailMessage.style.opacity = 0;
	passwordWrapper.style.border = "1px solid var(--gray2)";
	passwordWrapper.style.zIndex = 0;
	
	
    fetch("password-check.member", {
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: new URLSearchParams({ password }).toString()
    })
    .then(resp => resp.json())
    .then(data => {
        if (data.passwordCheckResult) {
			passwordWrapper.style.border = "1px solid var(--main-green)";
			passWordFailMessage.style.color = "var(--main-green)";
			passwordWrapper.style.zIndex = 1;
        } else {
			
			passwordWrapper.style.border = "1px solid var(--warning-red)";
			passWordFailMessage.style.color = "var(--warning-red)";
			passwordWrapper.style.zIndex = 1;
        }
		passWordFailMessage.style.opacity = 1;
		passWordFailMessage.innerText = data.passwordCheckResultMessage;
    });
});


function togglePassword() {
    const passwordInput = document.getElementById("password");
    const toggleIcon = document.querySelector(".toggle-password");
    
    if (passwordInput.type === "password") {
        passwordInput.type = "text";
        toggleIcon.src = "../assets/images/member/see-password-icon-true.png";
    } else {
        passwordInput.type = "password";
        toggleIcon.src = "../assets/images/member/see-password-icon-false.png";
    }
}

document.getElementById("name").addEventListener("blur", (e) => {
    let name = e.target.value;
	const nameWrapper = document.getElementById("name-wrapper");
	const nameFailMessage = document.getElementById("name-fail-message");
	
	nameWrapper.style.border = "1px solid var(--gray2)";
	nameWrapper.style.zIndex = 0;
	
    fetch("name-check.member", {
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: new URLSearchParams({ name }).toString()
    })
    .then(resp => resp.json())
    .then(data => {
		
		if(data.nameCheckResult){
			nameWrapper.style.border = "1px solid var(--main-green)";
			nameWrapper.style.zIndex = 1;
		}else{
			nameWrapper.style.border = "1px solid var(--warning-red)";
			nameWrapper.style.zIndex = 1;
			
			nameFailMessage.style.display = "block";
			nameFailMessage.style.color = "var(--warning-red)";
		}
		
    });
});

document.getElementById("name").addEventListener("focus", (e) => {
	e.target.value = "";
	const nameWrapper = document.getElementById("name-wrapper");
	const nameFailMessage = document.getElementById("name-fail-message");
	
	nameFailMessage.style.display = "none";
	nameWrapper.style.border = "1px solid var(--gray2)";
	nameWrapper.style.zIndex = 0;
	
});


document.querySelectorAll(".gender-select-radio").forEach((radio) => {
	radio.addEventListener("change", ((e) => {
		let gender = e.target.value;
		console.log(gender);
	
		fetch("gender-select.member", {
		    method: "POST",
		    headers: { "Content-Type": "application/x-www-form-urlencoded" },
		    body: new URLSearchParams({ gender }).toString()
		})
		.then(resp => resp.json())
		.then(() => {
			document.querySelectorAll(".gender-select span").forEach(span => {
				span.style.zIndex = "0";
			    span.style.backgroundColor = "var(--white)";
			    span.style.color = "var(--gray4)";
			    span.style.border = "1px solid var(--gray3)";
			    span.style.fontWeight = "300";
			});

			let changeSpan = radio.nextElementSibling;
			if (e.target.checked) {
				changeSpan.style.zIndex = "1";
				changeSpan.style.border = "1px solid var(--main-green)";
				changeSpan.style.backgroundColor = "var(--light-green)";
				changeSpan.style.color = "var(--sub-green)";
				changeSpan.style.fontWeight = "500";
			}
		})
		.catch(err => {
			          console.error("요청 실패:", err);
        });;
		
	}))
});


// 기본 Flatpickr 적용
flatpickr("#birth", {
	
    enableTime: false, // 시간 선택 비활성화
    dateFormat: "Y-m-d", // 날짜 형식 (예: 2024-03-19)
    minDate: "1900-01-01", // 최소 선택 가능 날짜
	
	onChange: (selectDates, birthDate) => {
		if (birthDate) {
			const birthWrapper = document.getElementById("birth-wrapper");
			const birthFailMessage = document.getElementById("birth-fail-message");
			
			birthWrapper.style.border = "1px solid var(--gray2)";
			birthWrapper.style.zIndex = 0;

			// 서버로 비동기 요청 보내기
			fetch("birth-check.member", {
				method: "POST",
				headers: {
				  "Content-Type": "application/x-www-form-urlencoded"
				},
				body: new URLSearchParams({ birthDate}).toString()
			})
			.then(resp => resp.json())
			.then(data => {
				if(data.birthCheckResult){
					birthWrapper.style.border = "1px solid var(--main-green)";
					birthWrapper.style.zIndex = 1;
				} else{
					birthWrapper.style.border = "1px solid var(--warning-red)";
					birthWrapper.style.zIndex = 1;
					
					birthFailMessage.style.display = "block";
					birthFailMessage.style.color = "var(--warning-red)";
				}
				
				
			})
			.catch(err => {
				console.error("요청 실패:", err);
			});
		}
	}
});

document.getElementById("birth-icon").addEventListener("click",() => {
	document.getElementById("birth")._flatpickr.open();
})

function sendPhoneAuth() {
	let phoneWrapper = document.getElementById("phone-wrapper");
	let phoneAuthWrapper = document.getElementById("phone-auth-wrapper");
    
	phoneWrapper.style.border = "1px solid var(--gray2)";
	phoneAuthWrapper.style.border = "1px solid var(--gray2)";
	phoneAuthWrapper.style.zIndex = 0;
    
    fetch("send-phone-auth.member", { // AJAX 요청 (비동기)
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: new URLSearchParams({ phone }).toString()
    })
    .then(resp => resp.json()) // 서버에서 JSON 응답을 받음
    .then(data => {
    	if(data.samePhone){
			phoneWrapper.style.border = "1px solid var(--warning-red)";
			phoneAuthWrapper.style.border = "var(--warning-red)";
			phoneAuthWrapper.style.zIndex = 1;
    	}else{
			phoneWrapper.style.border = "1px solid var(--warning-red)";
			phoneAuthWrapper.style.border = "1px solid var(--warning-red)";
			phoneAuthWrapper.style.zIndex = 1;
		}
		
    })
    .catch(error => console.error("Error:", error)); // 에러 처리
}

 /**
 * 인증번호 확인 요청 (AJAX)
 * - 사용자가 "인증 확인" 버튼을 클릭하면 실행됨
 * - 서버의 `mail-check` 컨트롤러로 인증번호를 전송하고 검증 요청
 */
function phoneCheck() {
	const idWrapper = document.getElementById("id-wrapper");
	const idAuthWrapper = document.getElementById("id-auth-wrapper");
	const mailCheckMessage = document.getElementById("mail-fail-message");
    let mailAuthCode = document.getElementById("mail-authCode").value; // 입력된 인증번호 가져오기
	
	idWrapper.style.border = "1px solid var(--gray2)";
	idAuthWrapper.style.border = "1px solid var(--gray2)";
	idAuthWrapper.style.zIndex = 0;
	mailCheckMessage.style.opacity = 0;

    fetch("mail-check.member", { // AJAX 요청 (비동기)
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: new URLSearchParams({ mailAuthCode: mailAuthCode }).toString()
    })
    .then(resp => resp.json()) // 서버에서 JSON 응답을 받음
    .then(data => {
		if(data.mailCheckResult){
			idWrapper.style.border = "1px solid var(--main-green)";
			idAuthWrapper.style.border = "1px solid var(--main-green)";
			idAuthWrapper.style.zIndex = 1;
			
			
			mailCheckMessage.style.opacity = 1;
			mailCheckMessage.style.color = "var(--main-green)";
			mailCheckMessage.innerText = "※ 이메일 인증 완료"
		}else{
			idWrapper.style.border = "1px solid var(--warning-red)";
			idAuthWrapper.style.border = "1px solid var(--warning-red)";
			idAuthWrapper.style.zIndex = 1;
			
			alert(data.mailCheckResultMessage); // 인증 결과 메시지 출력	
			
			mailCheckMessage.style.opacity = 1;
			mailCheckMessage.style.color = "var(--warning-red)";
			mailCheckMessage.innerText = "※ 이메일 인증 실패"
		}
        
	})
	.catch(error => console.error("Error:", error)); // 에러 처리
}

/* 인증 시간 체크용 변수 */
let phoneCheckTimer = null;
let phoneCheckTimeLeft = 0;
/* 인증번호 체크 카운트 다운용 변수 (단위 : 초)*/
const mailCountdownSeconds = 120; 
const phoneCountdownSeconds = 120; 

/* 인증 시간 체크 함수 */
document.querySelectorAll(".request-phone-confirm").forEach(eventTag => {
	eventTag.addEventListener("click", () => {
		document.getElementById("confirm-countdown").textContent = "";
		document.getElementById("confirm-countdown").style.color = "var(--gray4)";
		const requestTag = document.querySelector(".phone-confirm-check");
		requestTag.style.opacity = "1";
		phoneCheckTimeLeft = phoneCountdownSeconds;
		//1초마다 업데이트
		phoneCheckTimer = setInterval(phoneUpdateCountdown, 1000);
	})
})


function phoneUpdateCountdown() {
    let minutes = Math.floor(phoneCheckTimeLeft / 60);
    let seconds = phoneCheckTimeLeft % 60;
    let timerText = document.getElementById("confirm-countdown");

    // 두 자리 숫자로 표시 (ex: 05:00)
    timerText.textContent = 
        (minutes < 10 ? "0" : "") + minutes + ":" + (seconds < 10 ? "0" : "") + seconds;

    if (phoneCheckTimeLeft > 0) {
        phoneCheckTimeLeft--; // 1초씩 감소
    } else {
        clearInterval(timer); // 타이머 중지
        timerText.textContent = "시간 종료";
        timerText.style.color = "var(--warning-red)"
    }
}


	