/**
 * 
 */

document.addEventListener("DOMContentLoaded", function () {
	const loginSuccess = new URLSearchParams(window.location.search).get("login");

	const loginFailMessage = document.querySelector(".login-fail span");
	
    if (loginSuccess === "false") {
        loginFailMessage.style.color = "var(--warning-red)";
		
    }else{
		loginFailMessage.style.color = "var(--white)";
	}
	
    const inputs = document.querySelectorAll(".input-group input");
    const loginButton = document.querySelector(".login-btn");

	inputs.forEach((input) => {
		input.addEventListener("focus", () => {
			loginFailMessage.style.color = "var(--white)";
		});
	})
	
	
    function checkInputs() {
        let allFilled = true;
        inputs.forEach(input => {
            if (input.value.trim() === "") {
                allFilled = false;
                input.classList.remove("filled");
            } else {
                input.classList.add("filled");
            }
        });

        if (allFilled) {
            loginButton.classList.add("active");
            loginButton.removeAttribute("disabled");
        } else {
            loginButton.classList.remove("active");
            loginButton.setAttribute("disabled", "true");
        }
    }

    inputs.forEach(input => {
        input.addEventListener("input", checkInputs);
    });

    checkInputs(); // 페이지 로드 시 실행
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

function clearInput(inputId) {
    document.getElementById(inputId).value = "";
    document.getElementById(inputId).classList.remove("filled");
    
    document.querySelector(".login-btn").classList.remove("active");
    document.querySelector(".login-btn").setAttribute("disabled", "true");
    
    checkInputs();
}

function toggleCheckbox(icon) {
    if (icon.src.includes("checkbox-icon-false.png")) {
        icon.src = "../assets/images/member/checkbox-icon-true.png";
    } else {
        icon.src = "../assets/images/member/checkbox-icon-false.png";
    }
}