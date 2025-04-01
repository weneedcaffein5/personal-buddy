const slider = document.querySelector(".slides");
const slideAll = document.querySelectorAll(".slide");
const slideLength = slideAll.length;
const prevBtnOn = document.querySelector(".prev-btn-on");
const prevBtnOff = document.querySelector(".prev-btn-off");
const nextBtnOn = document.querySelector(".next-btn-on");
const nextBtnOff = document.querySelector(".next-btn-off");

let index = 0;

// 다음/이전 버튼 이벤트 리스너
nextBtnOn.addEventListener('click', () => {
	moveSlide(1);
});
prevBtnOn.addEventListener('click', () => moveSlide(-1));

// 🔹 일반 이동 함수 (부드러운 슬라이드 이동)
function moveSlide(i) {
    index = (index + i + slideLength) % slideLength;
	
	if(index === slideLength - 1){
		jumpToSlide(0);
	}else if(index === 0) {
		jumpToSlide(slideLength - 1);		
	}else {
    	updateSlide();
	}
}

// 🔹 특정 슬라이드로 순간이동 (transition 없이 이동)
function jumpToSlide(targetIndex) {
    slider.style.transition = "none";  // 애니메이션 제거
    index = targetIndex;
    slider.style.transform = `translateX(-${index * 100}%)`;
}

// 🔹 슬라이드 위치 업데이트 (부드러운 이동)
function updateSlide() {
    slider.style.transition = "transform 0.5s ease-in-out"; // 애니메이션 적용
    slider.style.transform = `translateX(-${index * 100}%)`;
}

// 🔹 자동 슬라이드 (5초마다 이동)
function autoSlide() {
    moveSlide(1);
}
setInterval(autoSlide, 5000);
