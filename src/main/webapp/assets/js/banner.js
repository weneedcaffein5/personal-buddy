/**
 * 
 */
	let currentIndex = 1; // 실제 슬라이드는 1번부터 시작 (0은 clone)
	const bannerWrapper = document.getElementById("bannerWrapper");
	const slides = document.querySelectorAll("#banner-slide");
	const totalSlides = slides.length;
	const realSlideCount = totalSlides - 2; // clone 제외한 진짜 슬라이드 수
	const slideWidth = 1920;
	const intervalTime = 5000;
	let slideTimer;
	
	// 페이징 점
	const dotsContainer = document.getElementById("dots");
	for (let i = 0; i < realSlideCount; i++) {
	  const dot = document.createElement("span");
	  dot.classList.add("dot");
	  if (i === 0) dot.classList.add("active");
	  dot.addEventListener("click", () => {
	    moveToSlide(i + 1); // clone 고려해서 +1
	    resetAutoSlide();
	  });
	  dotsContainer.appendChild(dot);
	}
	const dots = document.querySelectorAll(".dot");
	
	function moveToSlide(index, animated = true) {
	  if (!animated) bannerWrapper.style.transition = "none";
	  else bannerWrapper.style.transition = "transform 0.5s ease";
	
	  bannerWrapper.style.transform = "translateX(-" + (slideWidth * index) + "px)";
	  currentIndex = index;
	
	  updateDots();
	}
	
	function updateDots() {
	  dots.forEach(dot => dot.classList.remove("active"));
	  const realIndex = currentIndex - 1;
	  if (realIndex >= 0 && realIndex < realSlideCount) {
	    dots[realIndex].classList.add("active");
	  }
	}
	
	function nextSlide() {
	  if (currentIndex >= totalSlides - 1) return;
	  moveToSlide(currentIndex + 1);
	  resetAutoSlide();
	}
	
	function prevSlide() {
	  if (currentIndex <= 0) return;
	  moveToSlide(currentIndex - 1);
	  resetAutoSlide();
	}
	
	function startAutoSlide() {
	  slideTimer = setInterval(() => {
	    moveToSlide(currentIndex + 1);
	  }, intervalTime);
	}
	
	function resetAutoSlide() {
	  clearInterval(slideTimer);
	  startAutoSlide();
	}
	
	bannerWrapper.addEventListener("transitionend", () => {
	  // 오른쪽 끝 (clone 첫 번째)
	  if (currentIndex === totalSlides - 1) {
	    moveToSlide(1, false); // 순간이동
	  }
	
	  // 왼쪽 끝 (clone 마지막)
	  if (currentIndex === 0) {
	    moveToSlide(realSlideCount, false); // 순간이동
	  }
	});
	
	// 시작
	window.addEventListener("load", () => {
	  moveToSlide(1, false);
	  startAutoSlide();
	});
