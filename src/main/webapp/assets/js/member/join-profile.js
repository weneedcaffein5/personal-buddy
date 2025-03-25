/*이미지 드래그 방지용*/
document.querySelectorAll("img").forEach(img => {
	img.addEventListener("dragstart", function (event) {
    	event.preventDefault();
	});
});

document.getElementById("nickname").addEventListener("blur", (e) => {
    let nickname = e.target.value;
	const nicknameWrapper = document.getElementById("nickname-wrapper");
	const nicknameFailMessage = document.getElementById("nickname-fail-message");
	const button = document.querySelector(".signup-btn");
	
	nicknameFailMessage.style.display = "none";
	nicknameWrapper.style.border = "1px solid var(--gray2)";
	
    fetch("nickname-check.member", {
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: new URLSearchParams({ nickname }).toString()
    })
    .then(resp => resp.json())
    .then(data => {
        if (data.nicknameCheckResult) {
			nicknameWrapper.style.border = "1px solid var(--main-green)";
			
			button.classList.add("active");
	    	button.removeAttribute("disabled");
			
        } else {
			nicknameWrapper.style.border = "1px solid var(--warning-red)";
			nicknameFailMessage.style.display = "inline";
			nicknameFailMessage.style.color = "var(--warning-red)";
			nicknameFailMessage.innerText = data.nicknameCheckResultMessage;
			
			button.classList.remove("active");
	        button.setAttribute("disabled", "true");
        }
    })
	.catch(err => {
		console.error("요청 실패:", err);
    });
});


document.getElementById("nickname").addEventListener("focus", (e) => {
	e.target.value = "";
	const nicknameWrapper = document.getElementById("nickname-wrapper");
	const nicknameFailMessage = document.getElementById("nickname-fail-message");
	const button = document.querySelector(".signup-btn");
	
	nicknameFailMessage.style.display = "none";
	nicknameWrapper.style.border = "1px solid var(--gray2)";
	nicknameWrapper.style.zIndex = 0;
	

	button.classList.remove("active");
	button.setAttribute("disabled", "true");
	
});

document.getElementById("nickname").addEventListener('input', (e) => {
	const lengthSpan = document.getElementById("nickname-input-length");
	
	const currentLength = e.target.value.length;
	lengthSpan.innerText = currentLength + " / 14";
});


document.getElementById("comment").addEventListener('input', (e) => {
	const lengthSpan = document.getElementById("comment-input-length");
	
	const currentLength = e.target.value.length;
	lengthSpan.innerText = currentLength + " / 30";
});

