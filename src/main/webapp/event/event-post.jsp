<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>님의 게시글</title>
<link rel="stylesheet" href="../assets/css/global.css">
<link rel="stylesheet" type="text/css" href="../assets/css/header.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/banner.css" />
<link rel="stylesheet" href="../assets/css/event/event-post.css">
</head>
<body>
	<div class="community-post">
        <!-- 헤더 -->
        <%@ include file="../layout/header.jsp" %>
        <!-- 배너 -->
        <%@ include file="../layout/banner.jsp" %>
		<!-- post-main -->
        <div class="main">
            <div class="title">
                <div class="title-top">
                    <h1 class="post-title">오늘의 미션 :  오전6시 기상</h1>
                    <h2 class="post-create-time">2025.03.05게시</h2>
                </div>
                <div class="title-bottom">
                    <div class="member-info">
                        <img src="../assets/images/community/프로필 사진.png" alt="프로필 사진">
                        <span class="member-name">운영자</span>
                    </div>
                    <div class="post-info">
                        <div class="post-info-box">
                            <span class="post-info-text">조회 수</span>
                            <span class="post-info-count">1552</span>
                        </div>
                        <div class="post-info-box">
                            <span class="post-info-text">| 좋아요</span>
                            <span class="post-info-count">244</span>
                        </div>
                        <div class="post-info-box">
                            <span class="post-info-text">| 댓글</span>
                            <span class="post-info-count">78</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="post-main">
            	<img src="../assets/images/event/event6am.png">
            	
            	
            </div>
            <div class="post-like-btn">
                <button class="post-like-btn-off">좋아요</button>
            </div>
            <div class="post-comment-title">
                <span class="post-comment-title-text">댓글 |</span>
                <span class="post-comment-title-count">99</span>    
            </div>
            <textarea class="input-comment" maxlength="500" placeholder="댓글을 입력해주세요"></textarea>
            <div class="insert-box">
                <span class="comment-text-count">0</span>
                <span class="comment-text-max">/ 500</span>
                <button class="insert-comment-btn">등록</button>
            </div>
            <div class="post-comment-box">
                <div class="post-comment">
                    <div class="comment-member-box">
                        <div class="member-info">
                            <img src="../assets/images/community/프로필 사진.png" alt="프로필 사진">
                            <span class="member-name">이벤트리스너</span>
                        </div>
                        <button class="member-comment-modify">수정</button>
                    </div>
                    <div class="member-comment-box">
                        <span class="member-comment">오예 성공</span>
                        <button class="member-comment-like-btn none">♥</button>
                    </div>
                    <div class="modify-hide-box">
                        <span class="comment-text-count hide">0</span>
                        <span class="comment-text-max hide">/ 500</span>
                        <button class="modify-delete-btn hide">삭제</button>
                        <button class="modify-add-btn hide">수정 완료</button>
                    </div>
                    <div class="comment-info">
                        <div class="comment-create-time">2025.02.05  03:20</div>
                        <div class="comment-like-count">♡ 99</div>
                    </div>
                </div>
                <div class="post-comment">
                    <div class="comment-member-box">
                        <div class="member-info">
                            <img src="../assets/images/community/프로필 사진.png" alt="프로필 사진">
                            <span class="member-name">럭키가이</span>
                        </div>
                        <button class="member-comment-modify">수정</button>
                    </div>
                    <div class="member-comment-box">
                        <span class="member-comment">조아쒀</span>
                        <button class="member-comment-like-btn none">♥</button>
                    </div>
                    <div class="modify-hide-box">
                        <span class="comment-text-count hide">0</span>
                        <span class="comment-text-max hide">/ 500</span>
                        <button class="modify-delete-btn hide">삭제</button>
                        <button class="modify-add-btn hide">수정 완료</button>
                    </div>
                    <div class="comment-info">
                        <div class="comment-create-time">2025.02.05  03:20</div>
                        <div class="comment-like-count">♡ 99</div>
                    </div>
                </div>
                <div class="post-comment">
                    <div class="comment-member-box">
                        <div class="member-info">
                            <img src="../assets/images/community/프로필 사진.png" alt="프로필 사진">
                            <span class="member-name">스폰지밥</span>
                        </div>
                        <button class="member-comment-modify none">수정</button>
                    </div>
                    <div class="member-comment-box">
                        <span class="member-comment">굿모닝</span>
                        <button class="member-comment-like-btn">♥</button>
                    </div>
                    <div class="modify-hide-box">
                        <span class="comment-text-count hide">0</span>
                        <span class="comment-text-max hide">/ 500</span>
                        <button class="modify-delete-btn hide">삭제</button>
                        <button class="modify-add-btn hide">수정 완료</button>
                    </div>
                    <div class="comment-info">
                        <div class="comment-create-time">2025.02.05  03:20</div>
                        <div class="comment-like-count">♡ 99</div>
                    </div>
                </div>
                <div class="post-comment">
                    <div class="comment-member-box">
                        <div class="member-info">
                            <img src="../assets/images/community/프로필 사진.png" alt="프로필 사진">
                            <span class="member-name">두더진다</span>
                        </div>
                        <button class="member-comment-modify none">수정</button>
                    </div>
                    <div class="member-comment-box">
                        <span class="member-comment">너네 두더지 함부로 만지지 마라...
							평소 철인삼종 대회도 완주하시고 헬스도 꾸준히 하던 지인분..같이 시골 내려갔다가 밭에서 두더지 발견함...
							귀엽다면서 만질려고 하길래 다들 말리는데 괜찮다면서 만짐...
							그렇게 눈앞에서 돌아가셨다.... 순식간에 잡아채서 땅속으로 끌고감...외마디 비명만 남긴 채 그렇게 땅 속 깊은 곳으로 사라지셨다... 아직도 안잊혀짐...
							그 뒤로 절대 두더지 봐도 안건드림....
						</span>
                        <button class="member-comment-like-btn">♥</button>
                    </div>
                    <div class="modify-hide-box">
                        <span class="comment-text-count hide">0</span>
                        <span class="comment-text-max hide">/ 500</span>
                        <button class="modify-delete-btn hide">삭제</button>
                        <button class="modify-add-btn hide">수정 완료</button>
                    </div>
                    <div class="comment-info">
                        <div class="comment-create-time">2025.02.05  03:20</div>
                        <div class="comment-like-count">♡ 99</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
<script src="../assets/js/community/community-post.js"></script>
</html>