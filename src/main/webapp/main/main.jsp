<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
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
    
      <c:forEach var="recommend" items="${foodList}">
  		<div class="food-item">
	    <!-- 이미지 링크 -->
	    <div class="food-img">      
	      <a href="${recommend.link}" target="_blank">
	        <img src="${pageContext.request.contextPath}/${recommend.img}" alt="${recommend.name}">
	      </a>
	    </div>
	    
	    <div class="food-info">
	      <div class="info-block">
	        <span class="label">식당명</span>
	        <span class="value name">${recommend.name}</span>
	      </div>
	
	      <div class="info-block">
	        <span class="label">별점</span>
	        <span class="value rating">${recommend.rating}</span>
	      </div>
	
	      <div class="info-block">
	        <span class="label">메인</span>
	        <span class="value main">${recommend.price} · ${recommend.menu}</span>
	      </div>
	
	      <div class="info-block">
	        <span class="label">주소</span>
	        <div class="address">
	          <span class="value">${recommend.addr}</span><br>
	        </div>
	      </div>
	    </div>
	  </div>
		</c:forEach>
    </div>
  </div>

<!-- 장소 추천 -->
	<div class="place-recommend">
	  <div class="place-wrapper">
	    <div class="place-list">
	      <p class="place-title1">여기 가보는 거 어때요?</p>
	      <c:forEach var="recommend" items="${placeList}" varStatus="status">
	        <c:if test="${recommend.interestBig eq '여행'}">
	          <div class="place-item ${status.first ? 'active' : ''}">
	            <div class="place-hover"></div>
	            <img src="${pageContext.request.contextPath}/${recommend.img}" alt="${recommend.title}">
	            <div class="place-info">
	              <h3 class="place-name">${recommend.title}</h3>
	              <p class="place-sub">${recommend.name}</p>
	              <p class="place-rating">${recommend.price} | ${recommend.type}</p>
	              <p class="place-location">${recommend.addr}</p>
	            </div>
	          </div>
	        </c:if>
	      </c:forEach>
	    </div>
	
	    <div class="place-details" id="map-container">
	      <div id="map" style="width:100%; height:600px; border-radius:10px;"></div>
	    </div>
	  </div>
	</div>


    <!-- 코디 추천 -->
	<div class="cloth-grid-wrap">
	  <p class="place-title1">이런 코디 어때요?<br>
        	관심 있는 브랜드의 코디를 추천해드려요</p>
	
	  <div class="cloth-grid">
	    <!-- 코디 1 -->
	    <c:forEach var="recommend" items="${clothList}">
	    	<c:if test="${recommend.interestBig eq '패션'}">
			    <div class="cloth-card">
			      <img src="${pageContext.request.contextPath}/${recommend.img}" alt="${recommend.title}">
			      <h3 class="cloth-card-title">${recommend.title}</h3>
			      <p class="cloth-card-desc">${recommend.desc}</p>
			    </div>
		    </c:if>
	    </c:forEach>
	  </div>
	</div>
</div> 	
</div>

<!-- 모달 창 -->
<div id="clothModal" class="modal">
    <div class="modal-content">
        <div class="close-btn">&times;</div>
        <h2>
        	이 코디를 내 코디에 추가하기
        </h2>
        <img id="modalImage" src="" alt="코디 이미지">
        <h3 id="modalTitle">${modalTitle}</h3>
        <p id="modalDesc">${modalDesc}</p>
        <button id="addToMyClothes">내 코디에 추가</button>
    </div>
</div>

<%@ include file="../layout/footer.jsp" %>
</body>

<script src="../assets/js/main/main.js"></script>

</html>