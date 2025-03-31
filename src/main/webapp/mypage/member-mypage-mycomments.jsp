<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/member-mypage-mycomments.css" />
<link rel="stylesheet" href="../assets/css/header.css">
<link rel="stylesheet" type="text/css" href="../assets/css/global.css" />
<title>member-mypage-mycomments</title>
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
                	<div class="nickname">
	                    <span>나는신이다</span>                	
                	</div>
                	<div class="status-message">
	                    <span>반가워요</span>                	
                	</div>
                </div>
                <div class="mypage">
                    <div class="tap-name">
                    	<img class="icon" src="../assets/images/mypage/mypage-icon.png">
                    	<span>마이페이지</span>
                    </div>
                    <div class="a-wrapper">
                    	<a id="now" class="link" href="mypage-mytree.mypage">나의 나무</a>
                    </div>
                    <div class="a-wrapper">
                    	<a class="link" href="mypage-myachievement.mypage">나의 업적</a>
                    </div>
                </div>
                <div class="community">
                	<div class="tap-name">
                		<img class="icon" src="../assets/images/mypage/community-icon.png">
	                    <span>커뮤니티</span>
                	</div>
                	<div class="a-wrapper">
	                    <a class="link" href="mypage-myposts.jsp">내 게시물</a>
                	</div>
                	<div class="a-wrapper">
	                    <a class="link" href="#">내가 쓴 댓글</a>
                	</div>
                </div>
                <div class="myinfo">
                	<div class="tap-name">
						<img class="icon" src="../assets/images/mypage/mypage-icon.png">
						<span>내 정보</span>
                	</div>
                	<div class="a-wrapper">
	                    <a class="link" href="#">프로필 설정</a>
                	</div>
                	<div class="a-wrapper">
	                    <a class="link" href="#">계정 설정</a>
                	</div>
                	<div class="a-wrapper">
	                    <a class="link" href="#">포인트 내역</a>                	
                	</div>
                	<div class="a-wrapper">
	                    <a class="link" href="#">알림 내역</a>                	
                	</div>
                	<div class="a-wrapper">
	                    <a class="link" href="#">추전 정보 수정</a>                	
                	</div>
                </div>
            </div>
            
            <div class="right-contentbox">
                <div class="mycomments-container">
                    <p class="mycomments-description">커뮤니티에서 내가 쓴 모든 댓글을 확인할 수 있습니다.</p>
                    <h2 class="mycomments-title">내가 작성한 댓글</h2>
                    <hr class="mycomments-divider">
                    
                    <div class="mycomments-list">
                    
			<!-- 첫 번째 댓글 -->
	            <div class="my-comments">
				  <div class="my-comments-left">
				    
				    <div class="my-comments-content">
				      <div class="my-comments-title-wrap">
				        <span class="my-comments-title">게시글 | </span>
				        <span class="my-comments-title">Alive</span>
				      </div>
				      <div class="my-comments-info">
				      <img class="my-comments-user-image" src="../assets/images/mypage/user-profile1.jpg" alt="유저 프로필">
				      <span>skyoung</span>
				      </div>
				      <p class="my-comments-text">
				      후회 하고 있어요 우리 다투던 그날
                      괜한 자존심 때문에 끝내자고 말을 해버린거야
                      금방 볼 줄 알았어 날 찾길 바랬어
                      허나 며칠이 지나도 아무소식 조차 없어
				      </p>
				    </div>
				  </div>
				  <div class="my-comments-meta-box">
				    <p class="my-comments-meta">2025.03.20 게시</p>
				  </div>
				</div>
				
				
				<!-- 두 번째 댓글 -->
	            <div class="my-comments">
				  <div class="my-comments-left">
				    
				    <div class="my-comments-content">
				      <div class="my-comments-title-wrap">
				        <span class="my-comments-title">게시글 | </span>
				        <span class="my-comments-title">JAVA 공부해요~</span>
				      </div>
				      <div class="my-comments-info">
				      <img class="my-comments-user-image" src="../assets/images/mypage/user-profile1.jpg" alt="유저 프로필">
				      <span>skyoung</span>
				      </div>
				      <p class="my-comments-text">
				      영수는 행복해 영수는 우영우 영수는 엄수 그리고 검수 천재 김영수
				      </p>
				    </div>
				  </div>
				  <div class="my-comments-meta-box">
				    <p class="my-comments-meta">2025.03.08 게시</p>
				  </div>
				</div>
				
				
				<!-- 세 번째 댓글 -->
	            <div class="my-comments">
				  <div class="my-comments-left">
				    
				    <div class="my-comments-content">
				      <div class="my-comments-title-wrap">
				        <span class="my-comments-title">게시글 | </span>
				        <span class="my-comments-title">2025 KBO 개막 일정</span>
				      </div>
				      <div class="my-comments-info">
				      <img class="my-comments-user-image" src="../assets/images/mypage/user-profile1.jpg" alt="유저 프로필">
				      <span>skyoung</span>
				      </div>
				      <p class="my-comments-text">
				    	달려라 서울의 용사여 LG 승리의 그 이름 LG트윈스
						싸워라 무적의 용사여 LG 영원한 그 이름 LG트윈스
						손을 들어 함께 외치는거야 승리를 향해 달리는거야
						하나가 되어 나아가자 LG트윈스 무적의 LG트윈스
						신바람 L...
				      </p>
				    </div>
				  </div>
				  <div class="my-comments-meta-box">
				    <p class="my-comments-meta">2025.02.27 게시</p>
				  </div>
				</div>
				
				
				<!-- 네 번째 댓글 -->
	            <div class="my-comments">
				  <div class="my-comments-left">
				    
				    <div class="my-comments-content">
				      <div class="my-comments-title-wrap">
				        <span class="my-comments-title">게시글 | </span>
				        <span class="my-comments-title">Alive</span>
				      </div>
				      <div class="my-comments-info">
				      <img class="my-comments-user-image" src="../assets/images/mypage/user-profile1.jpg" alt="유저 프로필">
				      <span>skyoung</span>
				      </div>
				      <p class="my-comments-text">
				      나는 따자하오 영수 나는 자바의 신 아무도 날 못 이겨 나는 우영우 음메ㅔㅔㅔㅔㅔ
				      </p>
				    </div>
				  </div>
				  <div class="my-comments-meta-box">
				    <p class="my-comments-meta">2025.02.01 게시</p>
				  </div>
				</div>

			  	
			  	
			<!-- 페이지네이션 -->
	      <div class="pagination">
	        <span class="arrow">&lt;</span>
	        <a href="#" class="active">1</a>
	        <a href="#">2</a>
	        <a href="#">3</a>
	        <a href="#">4</a>
	        <span class="dots">...</span>
	        <a href="#">10</a>
	        <span class="arrow">&gt;</span>
	      </div>
	    </div>
	
	  </div>
	</div>	
	</body>
	
	<script>	
            
            

/* 페이지네이션 */

document.addEventListener("DOMContentLoaded", function() {
    const posts = document.querySelectorAll(".my-comments"); 
    const paginationContainer = document.querySelector(".pagination"); // paginationContainer 추가
    const prevArrow = document.querySelector(".pagination .arrow:first-child");
    const nextArrow = document.querySelector(".pagination .arrow:last-child");

    /* console.log(posts);
	console.log(paginationLinks);
	console.log(paginationContainer);
	console.log(prevArrow);
	console.log(nextArrow); */
	
    let currentPage = 1;
    const postPerPage = 3;

    /* console.log("총 ㄱㅔ시글 수 : " + posts.length);
    console.log("한 페이지당 게시글 수 : " + postPerPage);
    console.log("현재 페이지 : " + currentPage); */

    function updatePagination() {
        console.log("페이지네이션 업데이트 실행됨");
        paginationContainer.innerHTML = ""; // 기존 버튼 제거 후 재생성

        paginationContainer.appendChild(prevArrow); //이전 버튼 추가

        const totalPages = Math.ceil(posts.length / postPerPage);
        console.log("총 페이지 수 : " + totalPages);

        for (let i = 1; i <= totalPages; i++) {
            const pageLink = document.createElement("a");
            pageLink.href = "#";
            pageLink.textContent = i;

            if (i === currentPage) {
                pageLink.classList.add("active");
            }

            pageLink.addEventListener("click", (e) => {
                e.preventDefault();
                /* console.log("페이지 버튼 클릭됨: " + i); */
                changePage(i);
            });

            paginationContainer.appendChild(pageLink);
        }

        paginationContainer.appendChild(nextArrow); //다음 버튼 추가

        prevArrow.style.opacity = currentPage === 1 ? "0.5" : "1";
        nextArrow.style.opacity = currentPage === totalPages ? "0.5" : "1";
    }

    // 게시글 4개씩만 표시 
    function showPosts() {
        /* console.log("게시글 표시 업데이트"); */
        posts.forEach((post, i) => {
            // 배열 인덱스는 0부터 시작하지만, 페이지는 1부터 시작하므로 -1 
            if (i >= (currentPage - 1) * postPerPage && i < currentPage * postPerPage) {
                post.style.display = "flex";
                /* console.log("표시됨: " + i); */
            } else {
                post.style.display = "none";
                /* console.log("숨김됨: " + i); */
            }
        });

        updatePagination(); // 페이지네이션도 함께 업데이트
    }

    function changePage(newPage) {
       /*  console.log("새로운 페이지로 변경: " + newPage); */
        const totalPages = Math.ceil(posts.length / postPerPage);

        if (newPage < 1 || newPage > totalPages) {
            console.error("잘못된 페이지 요청:", newPage);
            return;
        }

        // 기존 활성화된 페이지 버튼 비활성화
        document.querySelectorAll(".pagination a").forEach(link => link.classList.remove("active"));

        currentPage = newPage;
        showPosts();

        // 새롭게 활성화된 페이지 버튼에 active 추가
        document.querySelector(`.pagination a:nth-child(${currentPage + 1})`)?.classList.add("active");

       /*  console.log("페이지 변경 완료: " + currentPage); */
    }

     // 페이지네이션 버튼 클릭 
    prevArrow.addEventListener("click", () => {
        /* console.log("이전 페이지 버튼 클릭됨"); */
        changePage(currentPage - 1);
    });

    nextArrow.addEventListener("click", () => {
       /*  console.log("다음 페이지 버튼 클릭됨"); */
        changePage(currentPage + 1);
    }); 

    showPosts(); // 초기 실행
});


/* 페이지네이션 코드 설명 */

/* querySelectorAll로 모든 게시글을 가져와서
currentPage, postPerPage로 현재 보여줄 범위 계산한 뒤
style.display = "flex"로 보이게 하고, 나머진 "none"으로 숨김

페이지 번호(a 태그)는 createElement로 동적으로 생성하고,
클릭 이벤트(addEventListener)로 원하는 페이지로 이동할 수 있게 함

이전/다음 버튼도 DOM으로 선택해서
changePage() 함수로 페이지 변경되도록 만들었고,
맨 앞이나 맨 끝 페이지에서는 버튼을 흐리게(opacity) 처리 */

/* 페이지 로딩하면 showPosts() 호출
현재 페이지 내용만 보임
번호 or 화살표 클릭하면 changePage() --> 다시 showPosts() */

</script>
</html>
