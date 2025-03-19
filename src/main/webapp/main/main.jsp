<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<!-- <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=KAKAO_API_KEY&libraries=services"></script> -->
<link rel="stylesheet" href="../assets/css/main/main.css">
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div class="banner-container">	
    	<div class="banner-wrapper">
    	<a href="#" class="banner-slide">
    		<div class="banner-slide">
        		<img src="../assets/images/main/banner-blue.png" class="banner-slide" alt="배너 1">
        		<div class="banner-text">
        			<p class="banner-subtitle">버디들이 관심 있는 일정은?</p>
        			<h2 class="banner-title">버디들의 관심 일정을 <br> 공유해주세요!</h2>
    			</div>
    		</div>
    		</a>
    		
    		<a href="#" class="banner-slide">
    		<div class="banner-slide">
        		<img src="../assets/images/main/banner-green.png" class="banner-slide" alt="배너 2">
        		<div class="banner-text">
        			<p class="banner-subtitle">버디들이 관심 있는 일정은?</p>
        			<h2 class="banner-title">버디들의 관심 일정을 <br> 공유해주세요!</h2>
    			</div>
    		</div>
    		</a>
    		
    		<a href="#" class="banner-slide">
    		<div class="banner-slide">
        		<img src="../assets/images/main/banner-yellow.png" class="banner-slide" alt="배너 3">
        		<div class="banner-text">
        			<p class="banner-subtitle">버디들이 관심 있는 일정은?</p>
        			<h2 class="banner-title">버디들의 관심 일정을 <br> 공유해주세요!</h2>
    			</div>
    		</div>
    		</a>
    		
    		<a href="#" class="banner-slide">
    		<div class="banner-slide">
        		<img src="../assets/images/main/banner-blue.png" class="banner-slide" alt="배너 1(복사)">
        		<div class="banner-text">
        			<p class="banner-subtitle">버디들이 관심 있는 일정은?</p>
        			<h2 class="banner-title">버디들의 관심 일정을 <br> 공유해주세요!</h2>
    			</div>
    		</div> 
    		</a>
    	</div>
    	    	 	
    	<button class="banner-button" id="buttonSlide">&lt;</button>
    		<div class="banner-counter">
        		<span id="current-slide">1</span> / <span id="total-slides">3</span>
    		</div>
    		<button class="banner-button-next" id="nextSlide">&gt;</button>	
		</div>

	<div>
		<h2>캘린더</h2>
	</div>

	  <main class="content-wrapper">
        <!-- 음식 추천  -->
        <section class="food-recommend">
            <p class="food-title"> 어제 한식을 드셨네요? 오늘 ‘역삼역’에서 점심 이런 메뉴 어때요?!!</p>
            <div class="food-list">
                <div class="food-item"> 
                    <img src="../assets/images/main/만땅스시.jpg" alt="만땅스시">
                    <div class="food-info">
                        <h3 class="restaurant-name">만땅스시 역삼점</h3>
                        <p class="rating">4.0(49)</p>
                        <p class="price-category">₩10,000~20,000 · 초밥</p>
                        <p class="location">역삼로 128 1층</p>
                        <p class="service">매장 내 식사·테이크아웃·배달 서비스</p>
                    </div>
                </div>
                <div class="food-item"> 
                    <img src="../assets/images/main/갓포돈.jpg" alt="갓포돈">
                    <div class="food-info">
                        <h3 class="restaurant-name">돈까스마을 역삼점</h3>
                        <p class="rating">4.2(89)</p>
                        <p class="price-category">₩9,000~15,000 · 돈까스</p>
                        <p class="location">역삼로 102 2층</p>
                        <p class="service">매장 내 식사·테이크아웃</p>
                    </div>
                </div>
                <div class="food-item"> 
                    <img src="../assets/images/main/스테이크하우스.jpg" alt="스테이크하우스">
                    <div class="food-info">
                        <h3 class="restaurant-name">스테이크하우스</h3>
                        <p class="rating">4.5(120)</p>
                        <p class="price-category">₩15,000~30,000 · 스테이크</p>
                        <p class="location">강남대로 210</p>
                        <p class="service">매장 내 식사·예약 가능</p>
                    </div>
                </div>
                <div class="food-item"> 
                    <img src="../assets/images/main/한식당청담.jpg" alt="한식당 청담">
                    <div class="food-info">
                        <h3 class="restaurant-name">한식당 청담</h3>
                        <p class="rating">4.3(65)</p>
                        <p class="price-category">₩12,000~20,000 · 한식</p>
                        <p class="location">청담로 45</p>
                        <p class="service">매장 내 식사·테이크아웃</p>
                    </div>
                </div>
            </div>
        </section>
    </main>
    
    <section class="place-recommend">
    <div class="place-list">
        <p class="place-title1">카페에 가실 예정이시네요!</p>
        <p class="place-title2">스터디에 최적화된 카페 몇 군데를 찾아보았어요</p>

        <div class="place-item">
            <div class="place-hover"></div>
            <img src="../assets/images/main/카페사진1.png" alt="카페1">
            <div class="place-info">
                <h3 class="place-name">조용한 분위기의 공부 잘되는 카페!</h3>
                <p class="place-sub">카페인사이드</p>
                <p class="place-rating">4.4(69) · ₩1~10,000 · 카페</p>
                <p class="place-location">도곡로3길 27</p>
            </div>
        </div>

        <div class="place-item">
            <div class="place-hover"></div>
            <img src="../assets/images/main/카페사진2.png" alt="카페2">
            <div class="place-info">
                <h3 class="place-name">라떼가 맛있는 카페</h3>
                <p class="place-sub">지오반니커피</p>
                <p class="place-rating">4.7(53) · ₩1~10,000 · 커피숍</p>
                <p class="place-location">역삼동 667-17 1층 101호</p>
            </div>
        </div>
        
        <div class="place-item">
            <div class="place-hover"></div>
            <img src="../assets/images/main/카페사진3.png" alt="카페3">
            <div class="place-info">
                <h3 class="place-name">24시간 공부할수 있는 카페를 찾으신다면?</h3>
                <p class="place-sub">타우너스 에스프레소바</p>
                <p class="place-rating">4.7(53) · ₩1~10,000 · 커피숍</p>
                <p class="place-location">역삼동 667-17 1층 101호</p>
            </div>
        </div>
    </div>

    <div class="place-details">
    	<h3 class="place-title">카페 정보</h3>
    	<p class="place-sub">클릭하면 여기 상세 정보가 표시됩니다.</p>
    	<p class="place-address"></p>  
	</div>
	</section>
	
    
    <section class="cloth-recommend">
    <p class="cloth-title">이런 날씨엔 이런 코디</p>
    <div class="cloth-main">
        <div class="cloth-image">
            <img id="main-cloth" src="../assets/images/main/cloth-1.png" alt="코디1">
        </div>
        <div class="cloth-text">
            <p id="main-desc-title" class="cloth-desc-title">다름 속 빛나는 조화</p>
            <p id="main-desc" class="cloth-desc">다양성을 포용하는 오픈와이와이의 우리이자 나를 위한 컬렉션을 소개합니다.</p>
        </div>
    </div>
    <div class="cloth-thumbnail-list">
        <img class="cloth-thumbnail" src="../assets/images/main/cloth-1.png" alt="코디1" data-title="다름 속 빛나는 조화" data-desc="다양성을 포용하는 오픈와이와이의 우리이자 나를 위한 컬렉션을 소개합니다.">
        <img class="cloth-thumbnail" src="../assets/images/main/cloth-2.png" alt="코디2" data-title="스타일과 편안함" data-desc="모던한 감각과 함께 편안함을 제공하는 룩을 만나보세요.">
        <img class="cloth-thumbnail" src="../assets/images/main/cloth-3.png" alt="코디3" data-title="트렌디한 감각" data-desc="유행을 선도하는 감각적인 스타일을 즐겨보세요.">
        <img class="cloth-thumbnail" src="../assets/images/main/cloth-4.png" alt="코디4" data-title="감각적인 레이어드" data-desc="레이어드를 활용한 스타일링으로 개성을 표현하세요.">
    </div>
</section>
    

</body>
<script>

/* 장소 추천 */

document.addEventListener("click", function (e) {
	/*  const clickedItem = e.target.value(".place-item"); */
    const clickedItem = e.target.closest(".place-item");
    /* console.log(clickedItem); */
    if (!clickedItem) {
    	return;
    }

    const placeDetails = document.querySelector(".place-details");
    
    document.querySelectorAll(".place-item").forEach(i => i.classList.remove("active"));
    clickedItem.classList.add("active");
    
    const placeName = clickedItem.querySelector(".place-name").textContent;
    const placeSub = clickedItem.querySelector(".place-sub").textContent;
    const placeRating = clickedItem.querySelector(".place-rating").textContent;
    const placeLocation = clickedItem.querySelector(".place-location").textContent;
    const placeImg = clickedItem.querySelector("img").src;
    
    /* console.log(placeName);
    console.log(placeSub);
    console.log(placeRating);
    console.log(placeLocation);
    console.log(placeImg); */
  
    placeDetails.innerHTML = `<img src="${placeImg}" alt="${placeName}">
        <h3>${placeName}</h3>
        <p>${placeSub}</p>
        <p>${placeRating}</p>
        <p>${placeLocation}</p>`;

    placeDetails.classList.add("active");
    /*  console.log(placeDetails.classList); */
});


/* 코디 추천 */

documenr.querySelectorAll('.cloth-thumbnail').forEach(data => {
	data.addEventListener('click', function(){
		document.getElementryById('main-cloth')
		document.getElementryById('main-desc-title')
		document.getElementryById('main-desc')
		
	});
});

</script>
</html>