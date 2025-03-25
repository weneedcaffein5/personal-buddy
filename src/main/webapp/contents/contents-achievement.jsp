<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/global.css" />
<link rel="stylesheet" href="../assets/css/header.css">
<link rel="stylesheet" href="../assets/css/banner.css">
<link rel="stylesheet" type="text/css" href="../assets/css/contents/contents-achievement.css" />
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	<%@ include file="../layout/banner.jsp" %>
	
	<div class="container">
    	<div class="tab-box">
			<div class="tab-container">
					<div class="tab-btn"></div>
					<div id="achievementTab" class="tab-text tab-text-off">업적</div>
					<div id="myTreeTab" class="tab-text tab-text-on">나의 성장 나무</div>
					<div id="pointShopTab" class="tab-text tab-text-off">포인트 샵</div>
			</div>
		</div>

	<div class="sub-title-wrap">
    	<div class="board-sub-title">기간별 포인트 획득을 확인해보세요!</div>
		<div class="board-main-title">포인트 획득 💸</div>
	</div>
	
    <div class="points-section">
        <div class="point-box">
  <h3>일간 목표</h3>
  <ul>
    <li>
      <div class="point-left">
        <input type="checkbox" checked onclick="return false;" class="custom-checkbox">
        <span>일정 등록 ( 1 / 1 )</span>
      </div>
      <div class="points">30P 획득</div>
    </li>

    <li>
      <div class="point-left">
        <input type="checkbox" disabled class="custom-checkbox">
        <span>운동 일정 등록 ( 0 / 1 )</span>
      </div>
      <div class="points">40P 획득</div>
    </li>

    <li>
      <div class="point-left">
        <input type="checkbox" disabled class="custom-checkbox">
        <span>공부 일정 등록 ( 0 / 1 )</span>
      </div>
      <div class="points">50P 획득</div>
    </li>

    <li>
      <div class="point-left">
        <input type="checkbox" disabled class="custom-checkbox">
        <span>약속 일정 등록 ( 0 / 1 )</span>
      </div>
      <div class="points">50P 획득</div>
    </li>

    <li>
      <div class="point-left">
        <input type="checkbox" disabled class="custom-checkbox">
        <span>일일 목표 모두 달성 ( 1 / 4 )</span>
      </div>
      <div class="points">50P 획득</div>
    </li>
  </ul>
</div>

 <div class="point-box">
  <h3>주간 목표</h3>
  <ul>
    <li>
      <div class="point-left">
        <input type="checkbox" checked onclick="return false;" class="custom-checkbox">
        <span>일정 등록 ( 5 / 5 )</span>
      </div>
      <div class="points">100P 획득</div>
    </li>

    <li>
      <div class="point-left">
        <input type="checkbox" disabled class="custom-checkbox">
        <span>운동 일정 등록 ( 2 / 5 )</span>
      </div>
      <div class="points">30P 획득</div>
    </li>

    <li>
      <div class="point-left">
        <input type="checkbox" disabled class="custom-checkbox">
        <span>공부 일정 등록 ( 0 / 5 )</span>
      </div>
      <div class="points">40P 획득</div>
    </li>

    <li>
      <div class="point-left">
        <input type="checkbox" disabled class="custom-checkbox">
        <span>약속 일정 등록 ( 3 / 5 )</span>
      </div>
      <div class="points">20P 획득</div>
    </li>

    <li>
      <div class="point-left">
        <input type="checkbox" disabled class="custom-checkbox">
        <span>주간 목표 모두 달성 ( 1 / 4 )</span>
      </div>
      <div class="points">50P 획득</div>
    </li>
  </ul>
</div>

<div class="point-box">
  <h3>월간 목표</h3>
  <ul>
    <li>
      <div class="point-left">
        <input type="checkbox" checked onclick="return false;" class="custom-checkbox">
        <span>일정 등록 ( 20 / 20 )</span>
      </div>
      <div class="points">10P 획득</div>
    </li>

    <li>
      <div class="point-left">
        <input type="checkbox" disabled class="custom-checkbox">
        <span>운동 일정 등록 ( 4 /20 )</span>
      </div>
      <div class="points">30P 획득</div>
    </li>

    <li>
      <div class="point-left">
        <input type="checkbox" disabled class="custom-checkbox">
        <span>공부 일정 등록 ( 10 / 20 )</span>
      </div>
      <div class="points">40P 획득</div>
    </li>

    <li>
      <div class="point-left">
        <input type="checkbox" disabled class="custom-checkbox">
        <span>약속 일정 등록 ( 16 / 20 )</span>
      </div>
      <div class="points">20P 획득</div>
    </li>

    <li>
      <div class="point-left">
        <input type="checkbox" disabled class="custom-checkbox">
        <span>월간 목표 모두 달성 ( 1 / 4 )</span>
      </div>
      <div class="points">50P 획득</div>
    </li>
  </ul>
</div>
    </div>
 
    <!-- 업적 -->
    <div>
    	<div class="go-profile">
		  <div class="board-sub-title-wrap">
		    <div class="board-sub-title">프로필을 멋지게 장식해봐요!</div>
		    <div class="board-main-title">업적 목록 🎖</div>
		  </div>	
		  <a class="go-profile-link" href="../mypage/mypage-myachievement.jsp">프로필 설정하러 가기 >></a>
		</div>
		
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
                    <p class="achievement-description">퍼스널 버디 첫 가입</p>
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
            <img src="../assets/images/contents/achievement/칠가이2.png" alt="칠가이" class="achievement-icon">
        </div>

        <div class="achievement-desc">
            <h3 class="achievement-title">CHILL GUY</h3>
            <div class="achievement-line"></div> 

            <div class="achievement-content">
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">음주 약속 일정</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">30회 완료 시 달성</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">( 30 / 30 )</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-points">달성 시 <span class="highlight">100P</span> 획득</p>
                </div>
            </div> 
        </div> 
    </div> 
    
    
    <!-- 무거운 엉덩이 -->
    <div class="achievement-card">
        <div class="achievement-icon-container">
            <img src="../assets/images/contents/achievement/무거운엉덩이.png" alt="무거운엉덩이" class="achievement-icon">
        </div>

        <div class="achievement-desc">
            <h3 class="achievement-title">무거운엉덩이</h3>
            <div class="achievement-line"></div> 

            <div class="achievement-content">
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">공부 일정</p>
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
                    <p class="achievement-points">달성 시 <span class="highlight">300P</span> 획득</p>
                </div>
            </div> 
        </div> 
    </div>
    
    <!-- TOM BOY -->    
    <div class="achievement-card-white">
        <div class="achievement-icon-container">
            <img src="../assets/images/contents/achievement/완료전.png" alt="완료전" class="achievement-icon">
        </div>

        <div class="achievement-desc">
            <h3 class="achievement-title">TOM BOY</h3>
            <div class="achievement-line"></div> 

            <div class="achievement-content">
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">음주 약속 일정</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">50회 완료 시 획득</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">( 12 / 50 )</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-points">달성 시 <span class="highlight">200P</span> 획득</p>
                </div>
            </div> 
        </div> 
    </div>
    
    <!-- 득근 왕 -->    
    <div class="achievement-card-white">
        <div class="achievement-icon-container">
            <img src="../assets/images/contents/achievement/완료전.png" alt="완료전" class="achievement-icon">
        </div>

        <div class="achievement-desc">
            <h3 class="achievement-title">득근 왕</h3>
            <div class="achievement-line"></div> 

            <div class="achievement-content">
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">운동 일정</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">50회 완료 시 획득</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">( 10 / 50 )</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-points">달성 시 <span class="highlight">300P</span> 획득</p>
                </div>
            </div> 
        </div> 
    </div>
    
    
    <!-- 나도 개츠비 -->    
    <div class="achievement-card-white">
        <div class="achievement-icon-container">
            <img src="../assets/images/contents/achievement/완료전.png" alt="완료전" class="achievement-icon">
        </div>

        <div class="achievement-desc">
            <h3 class="achievement-title">나도 개츠비</h3>
            <div class="achievement-line"></div> 

            <div class="achievement-content">
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">음주 약속 일정</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">100회 완료 시 획득</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">( 12 / 100 )</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-points">달성 시 <span class="highlight">400P</span> 획득</p>
                </div>
            </div> 
        </div> 
    </div>
    
    
    <!-- 비상한 두뇌 -->    
    <div class="achievement-card-white">
        <div class="achievement-icon-container">
            <img src="../assets/images/contents/achievement/완료전.png" alt="완료전" class="achievement-icon">
        </div>

        <div class="achievement-desc">
            <h3 class="achievement-title">비상한 두뇌</h3>
            <div class="achievement-line"></div> 

            <div class="achievement-content">
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">공부 일정</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">50회 완료 시 획득</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">( 4 / 50 )</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-points">달성 시 <span class="highlight">600P</span> 획득</p>
                </div>
            </div> 
        </div> 
    </div>
    
    
    <!-- 나도 로니 콜먼 -->    
    <div class="achievement-card-white">
        <div class="achievement-icon-container">
            <img src="../assets/images/contents/achievement/완료전.png" alt="완료전" class="achievement-icon">
        </div>

        <div class="achievement-desc">
            <h3 class="achievement-title">나도 로니 콜먼</h3>
            <div class="achievement-line"></div> 

            <div class="achievement-content">
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">운동 일정</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">100회 완료 시 획득</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">( 10 / 100 )</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-points">달성 시 <span class="highlight">600P</span> 획득</p>
                </div>
            </div> 
        </div> 
    </div>
    
    
    <!-- 나도 아인슈타인 -->    
    <div class="achievement-card-white">
        <div class="achievement-icon-container">
            <img src="../assets/images/contents/achievement/완료전.png" alt="완료전" class="achievement-icon">
        </div>

        <div class="achievement-desc">
            <h3 class="achievement-title">나도 아인슈타인</h3>
            <div class="achievement-line"></div> 

            <div class="achievement-content">
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">운동 일정</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">100회 완료 시 획득</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-description">( 4 / 100 )</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-points">달성 시 <span class="highlight">900P</span> 획득</p>
                </div>
            </div> 
        </div> 
    </div>
    
    
    <!-- 킹 버디 -->    
    <div class="achievement-card-white">
        <div class="achievement-icon-container">
            <img src="../assets/images/contents/achievement/완료전.png" alt="완료전" class="achievement-icon">
        </div>

        <div class="achievement-desc">
            <h3 class="achievement-title">킹 버디</h3>
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
                    <p class="achievement-description">( 10 / 30 )</p>
                </div>
                <div class="achievement-item">
                    <img src="../assets/images/contents/achievement/checkbox-icon-true.png" alt="체크" class="check-icon">
                    <p class="achievement-points">달성 시 <span class="highlight">1000P</span> 획득</p>
                </div>
            </div> 
        </div> 
    </div>
    
     
 </div>
    
    
       
</div> 
</div>

 
</body>
<script src="../assets/js/contents/contents-achievement.js"></script>
</html>