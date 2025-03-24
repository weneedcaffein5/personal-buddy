/**
 * 
 */
NodeList.prototype.forEach = Array.prototype.forEach;
	
function toggleCheckbox(icon) {
    if (icon.src.includes("checkbox-icon-false.png")) {
        icon.src = "../assets/images/member/checkbox-icon-true.png";
        
        switch(icon.id){
        	case "check-all":
        		const imgs = document.querySelectorAll(".checkbox");
        		const inputs = document.querySelectorAll("#agree-container input");
        		imgs.forEach(img => {
        			img.src = "../assets/images/member/checkbox-icon-true.png";
        		});
        		inputs.forEach(input => {
        			input.value = 1;
        		});
        		break;
        		
        	case "check-service":
        		const serviceInput = document.querySelector(".agree-service");
        		serviceInput.value = 1;
        		break;
        		
        	case "check-information":
        		const informationIput = document.querySelector(".agree-information");
        		informationIput.value = 1;
        		break;
        		
        	case "check-location":
        		const locationInput = document.querySelector(".agree-location");
        		locationInput.value = 1;
        		break;
        }
    } else {
        icon.src = "../assets/images/member/checkbox-icon-false.png";
        
        switch(icon.id){
        	case "check-all":
        		const imgs = document.querySelectorAll(".checkbox");
        		const inputs = document.querySelectorAll("#agree-container input");
        		imgs.forEach(img => {
        			img.src = "../assets/images/member/checkbox-icon-false.png";
        		});
        		inputs.forEach(input => {
        			input.value = 0;
        		});
        		break;
        	case "check-service":
        		const serviceInput = document.querySelector(".agree-service");
        		serviceInput.value = 0;
        		break;
        	case "check-information":
        		const informationIput = document.querySelector(".agree-information");
        		informationIput.value = 0;
        		break;
        	case "check-location":
        		const locationInput = document.querySelector(".agree-location");
        		locationInput.value = 0;
        		break;
        }
    }
    
	const nextButton = document.querySelector(".next-btn");
    
    if (checkInputs()) {
    	nextButton.classList.add("active");
    	nextButton.removeAttribute("disabled");
    } else {
    	nextButton.classList.remove("active");
        nextButton.setAttribute("disabled", "true");
    }
}

function checkInputs(){
	 const inputs = document.querySelectorAll("#agree-container input");
	 let check = true;
	 const allCheck = document.getElementById("check-all"); 
	 
	inputs.forEach(input => {
		if(input.className !== "agree-all"){
			if(input.value == 0){
				check = false;
			}
		}
	});
	
	if(check){
		allCheck.src = "../assets/images/member/checkbox-icon-true.png";
	}else{
		allCheck.src = "../assets/images/member/checkbox-icon-false.png";
	}
	
	return check;
}