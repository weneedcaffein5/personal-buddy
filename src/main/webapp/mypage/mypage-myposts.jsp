<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-myposts.css" />
<link rel="stylesheet" href="../assets/css/header.css">
<link rel="stylesheet" type="text/css" href="../assets/css/global.css" />
<title>mypage-myposts</title>
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
      <div class="myposts-container">
        <p class="myposts-description">내가 커뮤니티에 등록한 게시물을 확인하고 관리할 수 있습니다.</p>
        <h2 class="myposts-title">내 게시물</h2>
        <hr class="myposts-divider">

        <div class="myposts-list">
        
        <!-- 첫 번째 게시물 -->
        	<div class="mypost">
            <img class="mypost-image" src="../assets/images/mypage/myposts-dummy-1.jpg" alt="게시물 이미지">
            <div class="mypost-content">
              <h3 class="mypost-title">⚽ 2025 토트넘 경기 일정</h3>
              <p class="mypost-text">이번 시즌 토트넘의 경기 일정을 공유합니다. 챔피언스리그와 프리미어리그 일정을 한눈에 볼 수 있도록 정리했습니다.</p>
            </div>
            
            <div class="mypost-meta-box">
		    <p class="mypost-meta">2025.02.01 게시</p>
			    <!-- <div class="mypost-stats">
			      <span><img src="../assets/images/community/like-icon.png" alt="좋아요"> 800</span>
			      <span><img src="../assets/images/community/comment-icon.png" alt="댓글"> 20</span>
			      <span><img src="../assets/images/community/view-icon.png" alt="조회수"> 2,310</span>
			    </div> -->
		  	</div>
          </div>
          
          <!-- 두 번째 게시물 -->
          <div class="mypost">
            <img class="mypost-image" src="../assets/images/mypage/myposts-dummy-2.jpg" alt="게시물 이미지">
            <div class="mypost-content">
              <h3 class="mypost-title">🖥️ It's all JavaScript. There is No JAVA</h3>
              <p class="mypost-text">
              JS is the best Language for all developers.Many developers use JS well. 
              Whether you're a front developer or a back developer, it's an essential language. 
              So let's study together.It'll be a blast.
              </p>
            </div>
            <div class="mypost-meta-box">
		    <p class="mypost-meta">2025.02.01 게시</p>
			    
		  	</div>
          </div>
          
          <!-- 세 번째 게시물 -->
          <div class="mypost">
            <img class="mypost-image" src="../assets/images/mypage/myposts-dummy-3.jpg" alt="게시물 이미지">
            <div class="mypost-content">
              <h3 class="mypost-title">☕ 같이 카공해요</h3>
              <p class="mypost-text">
              서러운 맘을 못 이겨 잠 못 들던 어둔 밤을 또 견디고
              내 절망관 상관 없이 무심하게도 아침은 날 깨우네
              상처는 생각보다 쓰리고 아픔은 생각보다 깊어가 
              널 원망하던 수많은 밤이 내겐 지옥같아
              </p>
            </div>
            <div class="mypost-meta-box">
		    <p class="mypost-meta">2025.02.01 게시</p>
		  	</div>
          </div>
          
          <!-- 네 번째 게시물 -->
          <div class="mypost">
            <img class="mypost-image" src="../assets/images/mypage/myposts-dummy-4.jpg" alt="게시물 이미지">
            <div class="mypost-content">
              <h3 class="mypost-title">🔥 Alive</h3>
              <p class="mypost-text">
              답답한 창살은 뜯어버려 단숨에 작살을 내 짐승은 발톱을 갈아야 해 일격에 숨통을 쳐 
              이빨로 목덜밀 물어 푸짐한 저녁 식탁 피비린내 나는 축제 난장판쳐라
              그래 난 박살낼 테다 세상의 평화 타락한 너의 영혼을 신봉할 테다 
              </p>
            </div>
            <div class="mypost-meta-box">
		    <p class="mypost-meta">2025.02.01 게시</p>
		  	</div>
          </div>
          
          <!-- 다섯번 째 게시물 -->
          <div class="mypost">
            <img class="mypost-image" src="../assets/images/mypage/myposts-dummy-4.jpg" alt="게시물 이미지">
            <div class="mypost-content">
              <h3 class="mypost-title">🔥 Alive</h3>
              <p class="mypost-text">
              답답한 창살은 뜯어버려 단숨에 작살을 내 짐승은 발톱을 갈아야 해 일격에 숨통을 쳐 
              이빨로 목덜밀 물어 푸짐한 저녁 식탁 피비린내 나는 축제 난장판쳐라
              그래 난 박살낼 테다 세상의 평화 타락한 너의 영혼을 신봉할 테다 
              </p>
            </div>
            <div class="mypost-meta-box">
		    <p class="mypost-meta">2025.02.01 게시</p>
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
    const posts = document.querySelectorAll(".mypost"); 
    const paginationContainer = document.querySelector(".pagination"); // paginationContainer 추가
    const prevArrow = document.querySelector(".pagination .arrow:first-child");
    const nextArrow = document.querySelector(".pagination .arrow:last-child");

    /* console.log(posts);
	console.log(paginationLinks);
	console.log(paginationContainer);
	console.log(prevArrow);
	console.log(nextArrow); */
	
    let currentPage = 1;
    const postPerPage = 4;

    console.log("총 ㄱㅔ시글 수 : " + posts.length);
    console.log("한 페이지당 게시글 수 : " + postPerPage);
    console.log("현재 페이지 : " + currentPage);

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
        console.log("새로운 페이지로 변경: " + newPage);
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

        console.log("페이지 변경 완료: " + currentPage);
    }

   /*  // 페이지네이션 버튼 클릭 
    prevArrow.addEventListener("click", () => {
        console.log("이전 페이지 버튼 클릭됨");
        changePage(currentPage - 1);
    });

    nextArrow.addEventListener("click", () => {
        console.log("다음 페이지 버튼 클릭됨");
        changePage(currentPage + 1);
    }); */

    showPosts(); // 초기 실행
});



		


</script>
</html>
