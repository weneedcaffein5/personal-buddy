<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>customer-service</title>
<link rel="stylesheet" href="../assets/css/global.css" />
<link rel="stylesheet" href="../assets/css/header.css">
<link rel="stylesheet" href="../assets/css/banner.css">
<link rel="stylesheet" href="../assets/css/customer-service/customer-service.css" />
</head>
<body>
<!-- 헤더 -->
	<%@ include file="../layout/header.jsp"%>
	
<section class="customer-service">
  <h2 class="cs-title">어떻게 도와드릴까요?</h2>

  <div class="cs-wrapper">
    <p class="cs-sub-label">도움말 찾아보기</p>
    <h4 class="cs-sub-title">자주 묻는 질문</h4>

    <ul class="cs-list">
      <li class="cs-item">
      	<div class="cs-header">
        	<span class="cs-q">Q.</span>
        	<span class="cs-text">퍼스널 버디란 무엇인가요?</span>
        	<img src="../assets/images/customer-service/arrow-icon.png" alt=">" class="cs-icon">
        </div>
        <div class="cs-answer">
	    	퍼스널 버디란 "Personal"(개인적인, 나만의)과 "Buddy"(친구, 동반자)의 조합으로,<br/>
	    	언제 어디서나 나를 이해하고 도와주는 '맞춤형 일정 & 라이프 관리 친구’ 라는 의미를 담고 있습니다.<br/>
	    	퍼스널 버디는 개인화된 일정 관리와 삶의 질 향상을 목표로 한 혁신 플랫폼입니다.<br/>
	    	업무 일정과 개인 일정을 분리하고 추천 시스템과 커뮤니티 기능의 통합으로 재미를 더 하였으며,<br/>
	    	퍼스널 버디만의 성장나무로 성취감과 몰입을 강화했습니다.
	  	</div>
      </li>
      
      
      <li class="cs-item">
      	<div class="cs-header">
        	<span class="cs-q">Q.</span>
        	<span class="cs-text">공유 캘린더는 어떻게 사용하나요?</span>
        	<img src="../assets/images/customer-service/arrow-icon.png" alt=">" class="cs-icon">
        </div>
        <div class="cs-answer">
	    	새로운 캘린더를 생성하면, 해당 캘린더의 고유 URL이 자동으로 생성됩니다.<br/>
			이 URL을 공유하고 싶은 사용자에게 전달합니다.<br/>
			사용자는 해당 URL에 접속하여 ‘참가하기’ 버튼을 누릅니다.<br/>
			초대된 화면이 나타나면, 공유된 캘린더를 함께 조회하고 사용할 수 있습니다.<br/>
	  	</div>
      </li>
      
      
      <li class="cs-item">
      	<div class="cs-header">
        	<span class="cs-q">Q.</span>
        	<span class="cs-text">이메일을 변경할 수 있나요?</span>
        	<img src="../assets/images/customer-service/arrow-icon.png" alt=">" class="cs-icon">
        </div>
        <div class="cs-answer">
	    	퍼스널 버디에서는 보안 및 시스템상의 이유로 이미 등록한 이메일은 변경할 수 없습니다.<br/>
			다른 이메일를 사용하려면 새로운 이메일로 다시 가입 후 이용해주세요.
	  	</div>
      </li>
      
      
      <li class="cs-item">
      	<div class="cs-header">
        	<span class="cs-q">Q.</span>
        	<span class="cs-text">정산 내역은 어떻게 보이나요?</span>
        	<img src="../assets/images/customer-service/arrow-icon.png" alt=">" class="cs-icon">
        </div>
        <div class="cs-answer">
	    	퍼스널 버디란 "Personal"(개인적인, 나만의)과 "Buddy"(친구, 동반자)의 조합으로,<br/>
	    	언제 어디서나 나를 이해하고 도와주는 '맞춤형 일정 & 라이프 관리 친구’ 라는 의미를 담고 있습니다.<br/>
	    	퍼스널 버디는 개인화된 일정 관리와 삶의 질 향상을 목표로 한 혁신 플랫폼입니다.<br/>
	    	업무 일정과 개인 일정을 분리하고 추천 시스템과 커뮤니티 기능의 통합으로 재미를 더 하였으며,<br/>
	    	퍼스널 버디만의 성장나무로 성취감과 몰입을 강화했습니다.
	  	</div>
      </li>
      
      
      <li class="cs-item">
      	<div class="cs-header">
        	<span class="cs-q">Q.</span>
        	<span class="cs-text">추천 정보는 어디서 변경 하나요?</span>
        	<img src="../assets/images/customer-service/arrow-icon.png" alt=">" class="cs-icon">
        </div>
        <div class="cs-answer">
	    	퍼스널 버디란 "Personal"(개인적인, 나만의)과 "Buddy"(친구, 동반자)의 조합으로,<br/>
	    	언제 어디서나 나를 이해하고 도와주는 '맞춤형 일정 & 라이프 관리 친구’ 라는 의미를 담고 있습니다.<br/>
	    	퍼스널 버디는 개인화된 일정 관리와 삶의 질 향상을 목표로 한 혁신 플랫폼입니다.<br/>
	    	업무 일정과 개인 일정을 분리하고 추천 시스템과 커뮤니티 기능의 통합으로 재미를 더 하였으며,<br/>
	    	퍼스널 버디만의 성장나무로 성취감과 몰입을 강화했습니다.
	  	</div>
      </li>
      
    </ul>
  </div>
</section>

</body>
<script>
document.addEventListener("DOMContentLoaded", function () {
    const items = document.querySelectorAll(".cs-item");
	/* console.log(items); */
	
    items.forEach(item => {
      const header = item.querySelector(".cs-header");
      /* console.log(header); */
      header.addEventListener("click", () => {
        item.classList.toggle("active");
        /* console.log("Toggled active class for item:", item); */
      });
    });
  });
</script>
</html>