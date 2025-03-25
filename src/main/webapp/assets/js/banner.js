/**
 * 
 */
const bannerWrapper = document.getElementById("bannerWrapper");
  const slides = document.querySelectorAll("#banner-slide");
  const totalSlides = slides.length;
  const realSlides = totalSlides - 2;
  const dotsContainer = document.getElementById("dots");
  let slideWidth = window.innerWidth;
  let currentIndex = 1;
  let slideTimer;

  // dots 생성
  dotsContainer.innerHTML = "";
  for (let i = 0; i < realSlides; i++) {
    const dot = document.createElement("span");
    dot.classList.add("dot");
    if (i === 0) dot.classList.add("active");
    dot.addEventListener("click", () => {
      moveToSlide(i + 1);
      resetAutoSlide();
    });
    dotsContainer.appendChild(dot);
  }
  const dots = document.querySelectorAll(".dot");

  function updateDots() {
    dots.forEach(dot => dot.classList.remove("active"));
    if (currentIndex >= 1 && currentIndex <= realSlides) {
      dots[currentIndex - 1].classList.add("active");
    }
  }

  function moveToSlide(index, animated = true) {
    if (!animated) bannerWrapper.style.transition = "none";
    else bannerWrapper.style.transition = "transform 0.5s ease";

    currentIndex = index;
    bannerWrapper.style.transform = "translateX(-" + (slideWidth * index) + "px)";
    updateDots();
  }

  function nextSlide() {
    if (currentIndex < totalSlides - 1) {
      moveToSlide(currentIndex + 1);
    }
    resetAutoSlide();
  }

  function prevSlide() {
    if (currentIndex > 0) {
      moveToSlide(currentIndex - 1);
    }
    resetAutoSlide();
  }

  function startAutoSlide() {
    slideTimer = setInterval(() => {
      if (currentIndex < totalSlides - 1) {
        moveToSlide(currentIndex + 1);
      }
    }, 5000);
  }

  function resetAutoSlide() {
    clearInterval(slideTimer);
    startAutoSlide();
  }

  // 무한 루프 순간 이동 처리
  bannerWrapper.addEventListener("transitionend", () => {
    if (currentIndex === totalSlides - 1) {
      moveToSlide(1, false); // clone(1)에서 진짜 1로 순간 이동
    }
    if (currentIndex === 0) {
      moveToSlide(realSlides, false); // clone(4)에서 진짜 4로 순간 이동
    }
  });

  // 브라우저 리사이즈나 줌 변경 대응
  window.addEventListener("resize", () => {
    slideWidth = window.innerWidth;
    moveToSlide(currentIndex, false); // 현재 위치를 다시 맞춰줌
  });

  window.nextSlide = nextSlide;
  window.prevSlide = prevSlide;

  moveToSlide(1, false);
  startAutoSlide();
	