<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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

</head>

<script type="text/javascript" 
src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=6c57aa7b913e5fba1d1a904f83fc5afa&libraries=services">
</script> 

<body>
	<%@ include file="../layout/header.jsp" %>
	
<div>
	<%@ include file="../layout/banner.jsp" %>
</div>
	
<div>
<div class="content-wrapper">
	<div>
		<h2>캘린더</h2>
	</div>


  <div class="food-recommend">
    <p class="food-title">어제 한식을 드셨네요? <br>오늘 ‘역삼역’에서 점심 이런 메뉴 어때요?!!</p>
    
    <div class="food-list">
      <div class="food-item">
      
      <!-- 1 -->
      <div class="food-img">		
      	<a href="https://map.naver.com/p/entry/place/1608618357?lng=127.0356133&lat=37.501776&placePath=%2Fhome&entry=plt&searchType=place&c=15.00,0,0,0,dh">
        	<img src="../assets/images/main/갓포돈.jpg" alt="갓포돈">
        </a>
       </div>
        <div class="food-info">
        	<div class="info-block">
		      <span class="label">식당명</span>
		      <span class="value name">갓포돈</span>
		    </div>
		
		    <div class="info-block">
		      <span class="label">별점</span>
		      <span class="value rating">4.0(49)</span>
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
      
      
      <!-- 2 -->
      <div class="food-item">
      <div class="food-img">		
      	<a href="https://map.naver.com/p/entry/place/1600160922?lng=127.0337497&lat=37.4940512&placePath=%2Fhome&entry=plt&searchType=place">
        	<img src="../assets/images/main/만땅스시.jpg" alt="만땅스시">
        </a>
       </div>
        <div class="food-info">
        	<div class="info-block">
		      <span class="label">식당명</span>
		      <span class="value name">만땅스시 역삼점</span>
		    </div>
		
		    <div class="info-block">
		      <span class="label">별점</span>
		      <span class="value rating">4.0(49)</span>
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
      
      
      <!-- 3 -->
      <div class="food-item">
      <div class="food-img">		
      	<a href="https://map.naver.com/p/entry/place/36139056?lng=127.036039&lat=37.493259&placePath=%2Fhome&entry=plt&searchType=place">
        	<img src="../assets/images/main/네네치킨 역삼1호점.jpg" alt="네네치킨">
        </a>
       </div>
        <div class="food-info">
        	<div class="info-block">
		      <span class="label">식당명</span>
		      <span class="value name">네네치킨 역삼1호점</span>
		    </div>
		
		    <div class="info-block">
		      <span class="label">별점</span>
		      <span class="value rating">4.0(49)</span>
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
      
      
      <!-- 4 -->
      <div class="food-item">
      <div class="food-img">		
      	<a href="https://map.naver.com/p/search/%EC%97%AD%EC%82%BC%20%EC%8A%A4%ED%85%8C%EC%9D%B4%ED%81%AC%ED%95%98%EC%9A%B0%EC%8A%A4/place/1137601966?placePath=?entry=pll&from=nx&fromNxList=true&searchType=place">
        	<img src="../assets/images/main/스테이크하우스.jpg" alt="스테이크하우스">
        </a>
       </div>
        <div class="food-info">
        	<div class="info-block">
		      <span class="label">식당명</span>
		      <span class="value name">스테이크하우스</span>
		    </div>
		
		    <div class="info-block">
		      <span class="label">별점</span>
		      <span class="value rating">4.0(49)</span>
		    </div>
		
		    <div class="info-block">
		      <span class="label">메인</span>
		      <span class="value main">₩10,000~20,000 · 스테이크</span>
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
        	<p class="place-title1">카페에 가실 예정이시네요!<br>
        	스터디에 최적화된 카페 몇 군데를 찾아보았어요</p>

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
	<div class="cloth-grid-wrap">
	  <p class="place-title1">이런 코디 어때요?<br>
        	관심 있는 브랜드의 코디를 추천해드려요</p>
	
	  <div class="cloth-grid">
	    
	    <!-- 코디 1 -->
	    <div class="cloth-card">
	      <img src="../assets/images/main/cloth-2.png" alt="코디1">
	      <h3 class="cloth-card-title">자연스러운 멋이 담긴 꾸안꾸 무드</h3>
	      <p class="cloth-card-desc">편안한 분위기의 짙은 브라운 원피스에 양쪽 번 헤어스타일로 귀여움을 더했어요. 튀지 않는 컬러와 조화로운 실루엣으로 실내에서도 자연스럽게 시선을 사로잡는 룩입니다.</p>
	    </div>
	
	    <!-- 코디 2 -->
	    <div class="cloth-card">
	      <img src="../assets/images/main/cloth-5.jpg" alt="코디2">
	      <h3 class="cloth-card-title">레이어드의 정석, 믹스앤매치 감성룩</h3>
	      <p class="cloth-card-desc">빈티지한 질감의 연보라 컬러 드레스 위에 무심한 듯 블랙 아이템을 레이어드하여 감각적인 스타일을 완성했어요. 여유로운 실루엣과 디테일한 액세서리로 도심 속 아티스트 무드를 담아냈습니다.</p>
	    </div>
	
	    <!-- 코디 3 -->
	    <div class="cloth-card">
	      <img src="../assets/images/main/dress3.png" alt="코디3">
	      <h3 class="cloth-card-title">밀리터리 무드의 스트리트 유니폼</h3>
	      <p class="cloth-card-desc">짧은 소매와 하이넥이 조화를 이루는 톤다운 브라운 튜닉형 상의는 유틸리티 포켓으로 실용성과 개성을 동시에 잡았어요.시크하면서도 단단한 느낌을 주는 밀리터리 스타일이에요.</p>
	    </div>
	  </div>
	</div>

</div> 	
</div>

<%@ include file="../layout/footer.jsp" %>
</body>

<script src="../assets/js/main/main.js"></script>

</html>