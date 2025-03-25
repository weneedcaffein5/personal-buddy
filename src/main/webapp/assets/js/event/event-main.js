const slideAll = document.querySelectorAll(".slide");
const prevBtn = document.querySelector(".prev-btn");
const nextBtn = document.querySelector(".next-btn");

const index = 0;

function updateSlide() {
    slides.style.transform = `translateX(-${index * 100}%)`;
}

prevBtn.addEventListener("click", () => {
	console.log(index);
})