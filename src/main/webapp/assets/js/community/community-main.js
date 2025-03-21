/**
 * 
 */

const slider = document.getElementById("slider");
const contentWidth = 350; // 320 + margin (예: 30)
const totalItems = 5;
const visibleItems = 3; // .hot 영역에 따라 조정
let currentIndex = 0;
	
document.querySelector(".buttonl").addEventListener("click", () => {
	if (currentIndex > 0) {
	currentIndex--;
	updateSlider();
	}
});
	
document.querySelector(".buttonr").addEventListener("click", () => {
	if (currentIndex < totalItems - visibleItems) {
		currentIndex++;
		updateSlider();
	}
});
	
function updateSlider() {
	const offset = contentWidth * currentIndex;
	slider.style.transform = `translateX(-${offset}px)`;
}