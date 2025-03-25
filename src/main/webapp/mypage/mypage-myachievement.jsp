<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/global.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-myachievement.css" />
<title>나의 업적</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	<div class="body">
        <div class="container">
            <div class="sidebar">
                <div class="profile">
                    <span><img src="../assets/images/mypage/profile-default-image.png"></span>
                </div>
                <div class="profile-setting">
                    <strong class="nickname">나는 신이다</strong>
                    <span>반가워요</span>
                </div>
                <div class="mypage">
                    <div><strong><img class="icon" src="../assets/images/mypage/mypage-icon.png">마이페이지</strong></div>
                    <div><a class="link" href="mypage-mytree.jsp">나의 나무</a></div>
                    <div><a id="now" class="link" href="#">나의 업적</a></div>
                </div>
                <div class="community">
                    <strong><img class="icon" src="../assets/images/mypage/community-icon.png">커뮤니티</strong>
                    <a class="link" href="mypage-myposts.jsp">내 게시물</a>
                    <a class="link" href="#">내가 쓴 댓글</a>
                </div>
                <div class="myinfo">
                        <strong><img class="icon" src="../assets/images/mypage/mypage-icon.png">내 정보</strong>
                    <a class="link" href="#">프로필 설정</a>
                    <a class="link" href="#">계정 설정</a>
                    <a class="link" href="#">포인트 내역</a>
                </div>
            </div>
            <div class="right-contentbox">
                <div class="tree-info">
                    <div class="tree-info-left">
                        <div><span class="tree-info-style">도전과제를 달성하고 나만의 업적을 쌓아보세요</span></div>
                        <div class="go-tree">
                            <span class="go-tree-style">나의 대표 업적</span>
                        </div>
                    </div>
                </div>
                <div class="best-achievement">
                	<div class="best-achievements-container">
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
                	</div>
            	</div>
            	<div class="my-have-achievement">
            		<div class="tree-info">
	                    <div class="tree-info-left">
	                        <div class="go-tree">
	                            <span class="go-tree-style">나의 달성한 업적</span>
	                            <a href="../contents/contents-achievement.jsp">나의 업적 보러 가기 >></a>
	                        </div>
	                    </div>
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
                	</div>
            	</div>
            </div>
        </div>
    </div>
</body>
</html>