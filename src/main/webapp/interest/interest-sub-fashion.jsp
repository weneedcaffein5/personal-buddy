<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사 카테고리</title>
<link rel="stylesheet" href="../assets/css/global.css">
<link rel="stylesheet" href="../assets/css/interest/interest-category.css">
</head>
<body>
	<div class="container">
        <!-- 왼쪽 말풍선 -->
        <div class="container-left">
            <div class="speech-bubble">
                어떤 스타일을 선호하시나요?<br>
                평소 자주 입는 스타일을 선택해주시면,<br>
                날씨에 맞는 옷차림을 추천해드릴게요.
            </div>
            <img src="../assets/images/interest/logo.png" alt="로고 이미지" class="logo-img">
        </div>

        <!-- 오른쪽 관심사 선택 -->
        <div class="container-right">
	        <div class="container-right-wrapper">
	        	<div class="wrapper">
					<div class="main-title">
						<span><c:out value="${sessionScope.mainCategoryIndex + 1}"></c:out>. (패션) 선호 하는 스타일을 선택 해주세요</span>
					</div>
					<div class="sub-title">
						<span>최소 2개 이상</span>
					</div>     
		            <div class="tags">
		                <span class="tag">나이키</span>
		                <span class="tag">뉴발란스</span>
		                <span class="tag">스투시</span>
		                <span class="tag">아미</span>
		                <span class="tag">팔라스</span>
		                <span class="tag">디키즈</span>
		                <span class="tag">아디다스</span>
		                <span class="tag">칼하트</span>
		                <span class="tag">필라</span>
		                <span class="tag">LEE</span>
		                <span class="tag">KANGOL</span>
		                <span class="tag">COS</span>
		                <span class="tag">SATUR</span>
		                <span class="tag">아더에러</span>
		                <span class="tag">우영미</span>
		                <span class="tag">겐조</span>
		                <span class="tag">샤넬</span>
		                <span class="tag">구찌</span>
		                <span class="tag">미우미우</span>
		                <span class="tag">프라다</span>
		                <span class="tag">입생로랑</span>
		                <span class="tag">톰 브라운</span>
		                <span class="tag">스톤 아일랜드</span>
		                <span class="tag">폴로 (랄프로렌)</span>
		                <span class="tag">디올</span>
		                <span class="tag">버버리</span>
		                <span class="tag">노스 페이스</span>
		                <span class="tag">K2</span>
		                <span class="tag">아크 테릭스</span>
		                <span class="tag">스컬프터</span>
		                <span class="tag">키츠네</span>
		                <span class="tag">지방시</span>
		                <span class="tag">휴먼 메이드</span>
		                <span class="tag">스파오</span>
		                <span class="tag">유니클로</span>
		                <span class="tag">에잇 세컨즈</span>
		                <span class="tag">H&M</span>
		                <span class="tag">자라</span>
		                <span class="tag">후아유</span>
		                <span class="tag">지오다노</span>
		                <span class="tag">PATAGONIA</span>
		            </div>
	        	</div>
	        	<div class="next-btn-wrapper">
	        		<div class="btn-spacing">
		        		<form class="back-form" action="interest-back.interest" method="post">
		        			<button class="back-btn">뒤로가기</button>
		        		</form>
			        	<form class="next-form" action="interest-next.interest" method="post">
			        		<input type="hidden" class="hidden-input" name="sub-category-fashion">
				            <button class="next-btn">다음으로</button>
			        	</form>
	        		</div>
	        	</div>
	        </div>
        </div>
    </div>
</body>
<script src="../assets/js/interest/interest-category.js"></script>
</html>