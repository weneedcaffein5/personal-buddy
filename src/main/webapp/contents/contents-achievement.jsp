<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/global.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/contents/contents-achievement.css" />
<title>Insert title here</title>
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
	</div>


    <div class="tab-box">
				<div class="tab-container">
					<div class="tab-btn"></div>
					<div id="achievementTab" class="tab-text tab-text-off">업적</div>
					<div id="myTreeTab" class="tab-text tab-text-on">나의 성장 나무</div>
					<div id="pointShopTab" class="tab-text tab-text-off">포인트 샵</div>
				</div>
			</div>

    <div class="points-container">
        기간별 포인트 획득을 확인해보세요! <span>💸 포인트 획득</span>
    </div>

    <section class="points-section">
        <div class="point-box">
        
            <h3>일간 목표</h3>
            <ul>
                <li><input type="checkbox" checked onclick="return false;" class="custom-checkbox" > 일정 등록 ( 1 / 1 ) <span class="points">30P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 운동 일정 등록 ( 0 / 1 ) <span class="points">40P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 공부 일정 등록 ( 0 / 1 ) <span class="points">50P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 약속 일정 등록 ( 0 / 1 ) <span class="points">50P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 일일 목표 모두 달성 ( 1 / 4 ) <span class="points">50P 획득</span></li>
            </ul>
        </div>

        <div class="point-box">
            <h3>주간 목표</h3>
            <ul>
                <li><input type="checkbox" checked disabled class="custom-checkbox"> 일정 등록 ( 5 / 5 ) <span class="points">100P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 운동 일정 등록 ( 2 / 5 ) <span class="points">30P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 공부 일정 등록 ( 0 / 5 ) <span class="points">50P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 약속 일정 등록 ( 3 / 5 ) <span class="points">50P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 주간 목표 모두 달성 ( 1 / 4 ) <span class="points">50P 획득</span></li>
            </ul>
        </div>

        <div class="point-box">
            <h3>월간 목표</h3>
            <ul>
                <li><input type="checkbox" checked disabled class="custom-checkbox"> 일일 목표 (20/20) <span class="points">10P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 연속 목표 (4/20) <span class="points">30P 획득</span></li>
                <li><input type="checkbox" disabled class="custom-checkbox"> 월간 목표 완료 (1/4) <span class="points">50P 획득</span></li>
            </ul>
        </div>
    </section>
 
    <h2 class="section-title">업적 목록 📝</h2>
    
    <!-- 업적 -->
    <div class="achievements-container">
    <div class="achievement-card">
        <div class="achievement-icon-container">
            <img src="../assets/images/contents/achievement/퍼스널버디.png" alt="퍼스널 버디" class="achievement-icon">
        </div>

        <div class="achievement-desc">
            <h3 class="achievement-title">퍼스널 버디</h3>
            <div class="achievement-line"></div> 

            <div class="achievement-content">
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">퍼스널 버디 첫 가입 시</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">기본 증정 배지</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">( 1 / 1 )</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-points">달성 시 <span class="highlight">300P</span> 획득</p>
                </div>
            </div> 
        </div> 
    </div>  
    
    <!-- 알쓰 -->
    <div class="achievement-card">
        <div class="achievement-icon-container">
            <img src="../assets/images/contents/achievement/알쓰.png" alt="알쓰" class="achievement-icon">
        </div>

        <div class="achievement-desc">
            <h3 class="achievement-title">알쓰</h3>
            <div class="achievement-line"></div> 

            <div class="achievement-content">
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">음주 약속 일정</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">10회 완료 시 달성</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">( 10 / 10 )</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-points">달성 시 <span class="highlight">30P</span> 획득</p>
                </div>
            </div> 
        </div> 
    </div>  
    
    
    <!-- 헬린이 -->
    <div class="achievement-card">
        <div class="achievement-icon-container">
            <img src="../assets/images/contents/achievement/헬린이.png" alt="헬린이" class="achievement-icon">
        </div>

        <div class="achievement-desc">
            <h3 class="achievement-title">헬린이</h3>
            <div class="achievement-line"></div> 

            <div class="achievement-content">
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">운동 일정</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">10회 완료 시 달성</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">( 10 / 10 )</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-points">달성 시 <span class="highlight">50P</span> 획득</p>
                </div>
            </div> 
        </div> 
    </div>  
    
    
    <!-- 스터디 스타터 -->
    <div class="achievement-card">
        <div class="achievement-icon-container">
            <img src="../assets/images/contents/achievement/스터디스타터.png" alt="스터디스타터" class="achievement-icon">
        </div>

        <div class="achievement-desc">
            <h3 class="achievement-title">스터디 스타터</h3>
            <div class="achievement-line"></div> 

            <div class="achievement-content">
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">공부 일정</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">10회 완료 시 달성</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">( 10 / 10 )</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-points">달성 시 <span class="highlight">100P</span> 획득</p>
                </div>
            </div> 
        </div> 
    </div> 
    
    
    <!-- 중고 트레이너 -->
    <div class="achievement-card">
        <div class="achievement-icon-container">
            <img src="../assets/images/contents/achievement/중고트레이너.png" alt="중고트레이너" class="achievement-icon">
        </div>

        <div class="achievement-desc">
            <h3 class="achievement-title">중고트레이너</h3>
            <div class="achievement-line"></div> 

            <div class="achievement-content">
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">운동 일정</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">30회 완료 시 획득</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">( 30 / 30 )</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-points">달성 시 <span class="highlight">150P</span> 획득</p>
                </div>
            </div> 
        </div> 
    </div> 
    
    
    <!-- 칠가이 -->
    <div class="achievement-card">
        <div class="achievement-icon-container">
            <img src="../assets/images/contents/achievement/중고트레이너.png" alt="중고트레이너" class="achievement-icon">
        </div>

        <div class="achievement-desc">
            <h3 class="achievement-title">중고트레이너</h3>
            <div class="achievement-line"></div> 

            <div class="achievement-content">
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">운동 일정</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">30회 완료 시 획득</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">( 30 / 30 )</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-points">달성 시 <span class="highlight">150P</span> 획득</p>
                </div>
            </div> 
        </div> 
    </div> 
    
    
    <!-- 무거운 엉덩이 -->
    <div class="achievement-card">
        <div class="achievement-icon-container">
            <img src="../assets/images/contents/achievement/중고트레이너.png" alt="중고트레이너" class="achievement-icon">
        </div>

        <div class="achievement-desc">
            <h3 class="achievement-title">중고트레이너</h3>
            <div class="achievement-line"></div> 

            <div class="achievement-content">
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">운동 일정</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">30회 완료 시 획득</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">( 30 / 30 )</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-points">달성 시 <span class="highlight">150P</span> 획득</p>
                </div>
            </div> 
        </div> 
    </div> 
    
    
       
</div> 
 
</body>
<script src="../assets/js/contents/contents-achievement.js"></script>
</html>