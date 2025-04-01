<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main2</title>
<link rel="stylesheet" href="../assets/css/global.css">
<link rel="stylesheet" href="../assets/css/header.css">
<link rel="stylesheet" href="../assets/css/banner.css">
<link rel="stylesheet" href="../assets/css/footer.css">
<link rel="stylesheet" href="../assets/css/main/main.css">
<link rel="stylesheet" href="../assets/css/calendar/calendar.css">

</head>

<script type="text/javascript" 
src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=6c57aa7b913e5fba1d1a904f83fc5afa&libraries=services">
</script> 
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js'></script>

<body>
	<%@ include file="../layout/header.jsp" %>
	
<div>
	<%@ include file="../layout/banner.jsp" %>
</div>
	
<div>
<div class="content-wrapper">
	<div>
		<%@ include file="../calendar/calendar.jsp" %>
	</div>


  <div class="food-recommend">
    <p class="food-title">오늘 점심 이런 메뉴 어때요?!!</p>
    
    <div class="food-list">
      <div class="food-item">
      
      <!-- 1 -->
      <div class="food-img">		
      	<a href="https://map.naver.com/p/entry/place/1608618357?lng=127.0356133&lat=37.501776&placePath=%2Fhome&entry=plt&searchType=place&c=15.00,0,0,0,dh">
        	<img src="../assets/images/main/food-godpodon.jpg" alt="갓포돈">
        </a>
       </div>
        <div class="food-info">
        	<div class="info-block">
		      <span class="label">식당명</span>
		      <span class="value name">호보식당</span>
		    </div>
		
		    <div class="info-block">
		      <span class="label">별점</span>
		      <span class="value rating">4.65</span>
		    </div>
		
		    <div class="info-block">
		      <span class="label">메인</span>
		      <span class="value main">₩10,000~20,000 · 초밥</span>
		    </div>
		
		    <div class="info-block">
		      <span class="label">주소</span>
		      <div class="address">
		        <span class="value">역삼로 128 1층</span><br>
		      </div>
		    </div>
        </div>
      </div>
      
    </div>
  </div>


    
   <!-- 장소 추천 -->
    <div class="place-recommend">
     <div class="place-wrapper">
    	<div class="place-list">
        	<p class="place-title1">괜찮은 카페를 찾아봤어요!	</p>

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
            <img src="../assets/images/main/place-baguetteK.png" alt="카페3">
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
	<div class="cloth-grid-wrap">
	  <p class="place-title1">이런 코디 어때요?<br>
        	관심 있는 브랜드의 코디를 추천해드려요</p>
	
	  <div class="cloth-grid">
	    
	    <!-- 코디 1 -->
	    <div class="cloth-card">
	      <img src="../assets/images/main/cloth-hug1.png" alt="코디1">
	      <h3 class="cloth-card-title">자연스러운 멋이 담긴 꾸안꾸 무드</h3>
	      <p class="cloth-card-desc">편안한 분위기의 짙은 브라운 원피스에 양쪽 번 헤어스타일로 귀여움을 더했어요. 튀지 않는 컬러와 조화로운 실루엣으로 실내에서도 자연스럽게 시선을 사로잡는 룩입니다.</p>
	    </div>
	
	    
	  </div>
	</div>

</div> 	
</div>

<%@ include file="../layout/footer.jsp" %>
</body>

<script src="../assets/js/main/main.js"></script>

</html>