<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main2</title>
<link rel="stylesheet" href="../assets/css/global.css">
<link rel="stylesheet" href="../assets/css/main/main2.css">

</head>

<!-- <script type="text/javascript" 
src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=6c57aa7b913e5fba1d1a904f83fc5afa&libraries=services">
</script> -->

<body>
	<%@ include file="../layout/header.jsp" %>
	<%@ include file="../layout/banner.jsp" %>

	

<div class="content-wrapper">
	<div>
		<h2>캘린더</h2>
	</div>
  <div class="food-recommend">
    <h2 class="food-title">어제 한식을 드셨네요? 오늘 ‘역삼역’에서 점심 이런 메뉴 어때요?!!</h2>
    
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
        	<div class="restaurant-header">
			  <span class="restaurant-title">식당명</span>
			  <h3 class="restaurant-name">돈까스마을 역삼점</h3>
			</div>
			
			<div>
			<span>별점</span>
          	<p class="rating">4.2(89)</p>
          	</div>
          	
          	<div>
          	<span>메인</span>
          	<p class="price-category">₩9,000~15,000 · 돈까스</p>
          	</div>
          	
          	<div>
          	<span> 주소</span>
          	<p class="location">역삼로 102 2층 <br>매장 내 식사·테이크아웃</p>
          	<p class="service"></p>
          	</div>
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
  </div>


    
   <!-- 장소 추천 -->
    <div class="place-recommend">
     <div class="place-wrapper">
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
        </div>
         
        <div class="place-item">
            <div class="place-hover"></div>
            <img src="../assets/images/main/카페사진2.png" alt="카페2">
            <div class="place-info">
                <h3 class="place-name">라떼가 맛있는 카페</h3>
                <p class="place-sub">지오바네커피</p>
                <p class="place-rating">4.7(53) · ₩1~10,000 · 커피숍</p>
                <p class="place-location">서울특별시 강남구 역삼동 667-17</p>
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

    <div class="place-details"> </div>
	</div>
	
    <!-- 코디 추천 -->
    
	<div class="cloth-recommend">
    <p class="cloth-title">당신이 원하는 '그' 코디</p>
    <div class="cloth-main">
        <div class="cloth-image">
            <img id="main-cloth" src="../assets/images/main/cloth-5.jpg" alt="코디1">
        </div>
        <div class="cloth-text">
            <p id="main-desc-title" class="cloth-desc-title">선호하시는 브랜드인 '허그유어스킨'의 스타일이에요</p>
            
            <div id="main-desc">
	            <div class="cloth-info">
	                    <img class="cloth-info-image" src="../assets/images/main/pants1.jpg" alt="조거 팬츠">
	                <p><a href="https://www.musinsa.com/products/4757432" target="_blank">허그유어스킨-레이스 조거 팬츠(블랙)</a><br>98,100원</p>
	            </div>
	            <div class="cloth-info">
	                    <img class="cloth-info-image" src="../assets/images/main/dress1.png" alt="오프숄더 드레스">
	                <p><a href="https://www.musinsa.com/products/4757324" target="_blank">드로우 스트링 오프숄더 드레스 (핑크)</a><br>88,200원</p>
	            </div>
	            <div class="cloth-info">
	                    <img class="cloth-info-image" src="../assets/images/main/belt1.jpg" alt="스커트 벨트">
	                <p><a href="https://www.musinsa.com/products/4757300" target="_blank">플리츠 스커트 벨트</a><br>52,200원</p>
	            </div>
            </div>
            
        </div>
    </div>
    <div class="cloth-thumbnail-list">
        <img class="cloth-thumbnail" src="../assets/images/main/cloth-5.jpg" alt="코디1" 
        data-title="선호하시는 브랜드인 '허그유어스킨'의 스타일이에요" 
        data-desc='<div class="cloth-info">
                    <a href="https://www.musinsa.com/products/4757432" target="_blank">
                        <img class="cloth-info-image" src="../assets/images/main/pants1.jpg" alt="조거 팬츠">
                    </a>
                    <p><a href="https://www.musinsa.com/products/4757432" target="_blank">허그유어스킨-레이스 조거 팬츠(블랙)</a><br>98,100원</p>
                  </div>
                  <div class="cloth-info">
                    <a href="https://www.musinsa.com/products/4757324" target="_blank">
                        <img class="cloth-info-image" src="../assets/images/main/dress1.png" alt="오프숄더 드레스">
                    </a>
                    <p><a href="https://www.musinsa.com/products/4757324" target="_blank">드로우 스트링 오프숄더 드레스 (핑크)</a><br>88,200원</p>
                  </div>
                  <div class="cloth-info">
                    <a href="https://www.musinsa.com/products/4757300" target="_blank">
                        <img class="cloth-info-image" src="../assets/images/main/belt1.jpg" alt="스커트 벨트">
                    </a>
                    <p><a href="https://www.musinsa.com/products/4757300" target="_blank">플리츠 스커트 벨트</a><br>52,200원</p>
                  </div>'>
                  
        <img class="cloth-thumbnail" src="../assets/images/main/cloth-2.png" alt="코디2" 
        data-title="선호하시는 브랜드인 '스컬프터'의 스타일이에요"  
        data-desc='<div class="cloth-info">
                    <a href="https://www.musinsa.com/products/750908" target="_blank">
                        <img class="cloth-info-image" src="../assets/images/main/dress3.png" alt="원피스3">
                    </a>
                    <p><a href="https://sculptorpage.com/product/detail.html?product_no=10107&cate_no=783&display_group=1" target="_blank">카고 집업 드레스(소프트 브라운)</a><br>95,400원</p>
                  </div>     
                  
                  <div class="cloth-info">
                    <a href="https://sculptorpage.com/product/detail.html?product_no=12184&cate_no=785&display_group=1" target="_blank">
                        <img class="cloth-info-image" src="../assets/images/main/스컬프터-가방1.jpg" alt="스컬프터 가방">
                    </a>
                    <p><a href="https://sculptorpage.com/product/detail.html?product_no=12184&cate_no=801&display_group=1" target="_blank">메탈릭 호버백(블랙)</a><br>128,700원</p>
                  </div>  
                  
                  <div class="cloth-info">
                    <a href="https://sculptorpage.com/product/detail.html?product_no=12079&cate_no=785&display_group=1" target="_blank">
                        <img class="cloth-info-image" src="../assets/images/main/스컬프터-악세1.jpg" alt="악세사리">
                    </a>
                    <p><a href="https://sculptorpage.com/product/detail.html?product_no=12079&cate_no=785&display_group=1" target="_blank">멀티 브로치 세트</a><br>15,900원</p>
                  </div>
                     
                  </div>'>
                   
        <img class="cloth-thumbnail" src="../assets/images/main/dress4.png" alt="코디3" 
        data-title="선호하시는 브랜드인 '미우미우'의 스타일이에요" 
        data-desc='<div class="cloth-info">
                    <a href="https://www.miumiu.com/kr/ko/p/%ED%8F%AC%ED%94%8C%EB%A6%B0-%EB%93%9C%EB%A0%88%EC%8A%A4/MF5787_1BMS_F0E18_S_OOO" target="_blank">
                        <img class="cloth-info-image" src="../assets/images/main/miumiu-dress.png" alt="드레스">
                    </a>
                    <p><a href="https://www.miumiu.com/kr/ko/p/%ED%8F%AC%ED%94%8C%EB%A6%B0-%EB%93%9C%EB%A0%88%EC%8A%A4/MF5787_1BMS_F0E18_S_OOO" target="_blank">포플린 드레스(핑크)</a><br> 5,150,000원</p>                  
                   </div>
                   
                   <div class="cloth-info">
                   <a href="https://www.miumiu.com/kr/ko/p/%EC%8A%A4%ED%8A%B8%EB%9E%A9%EC%9D%B4-%EB%8B%AC%EB%A6%B0-%ED%8C%A8%EB%B8%8C%EB%A6%AD-%EC%8A%AC%EB%A7%81%EB%B0%B1/5I013E_650_F0002_F_M055
                   " target="_blank">
                        <img class="cloth-info-image" src="../assets/images/main/miumiu-shoes.png" alt="신발">
                   </a>
                   <p><a href="https://www.miumiu.com/kr/ko/p/%EC%8A%A4%ED%8A%B8%EB%9E%A9%EC%9D%B4-%EB%8B%AC%EB%A6%B0-%ED%8C%A8%EB%B8%8C%EB%A6%AD-%EC%8A%AC%EB%A7%81%EB%B0%B1/5I013E_650_F0002_F_M055
                   " target="_blank">포플린 드레스(핑크)</a><br> 5,150,000원</p>                  
                   </div>
                   
                   <div class="cloth-info">
                   <a href="https://www.musinsa.com/products/4757550" target="_blank">
                        <img class="cloth-info-image" src="../assets/images/main/jacket1.jpg" alt="블레이저">
                   </a>
                   <p><a href="https://www.musinsa.com/products/4757550" target="_blank">포플린 드레스(핑크)</a><br> 5,150,000원</p>                  
                   </div>
                                    	
                  </div>'>  
                  
        <img class="cloth-thumbnail" src="../assets/images/main/cloth-7.png" alt="코디4"
         data-title="선호하시는 브랜드인 '칼하트'의 스타일이에요"  
         data-desc='<div class="cloth-info">
                    <a href="https://www.musinsa.com/products/4757600" target="_blank">
                        <img class="cloth-info-image" src="../assets/images/main/coat1.jpg" alt="트렌치 코트">
                    </a>
                    <p><a href="https://www.musinsa.com/products/4757600" target="_blank">트렌치 코트 (베이지)</a><br>198,000원</p>
                  	</div>
                  	
                  	<div class="cloth-info">
                  	<a href="https://www.musinsa.com/products/4757600" target="_blank">
                        <img class="cloth-info-image" src="../assets/images/main/coat1.jpg" alt="트렌치 코트">
                    </a>
                    <p><a href="https://www.musinsa.com/products/4757600" target="_blank">트렌치 코트 (베이지)</a><br>198,000원</p>
                  	</div>
                  	
                  	<div class="cloth-info">
                  	<a href="https://www.musinsa.com/products/4757600" target="_blank">
                        <img class="cloth-info-image" src="../assets/images/main/coat1.jpg" alt="트렌치 코트">
                    </a>
                    <p><a href="https://www.musinsa.com/products/4757600" target="_blank">트렌치 코트 (베이지)</a><br>198,000원</p>
                  	</div>	
                  	
                  </div>'>
    		</div>
	</div>
	</div>
</body>



<script src="../assets/js/main/main.js"></script>

</html>