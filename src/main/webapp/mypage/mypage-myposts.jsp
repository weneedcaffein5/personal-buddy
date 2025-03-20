<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-myposts.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/global.css" />
<title>Insert title here</title>
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
                    <div><a id="now" class="link" href="#">나의 나무</a></div>
                    <div><a class="link" href="#">나의 업적</a></div>
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
            
            <div class="myposts-container">
    			<p class="myposts-description">내가 커뮤니티에 등록한 게시물을 확인하고 관리할 수 있습니다.</p>
    			<h2 class="myposts-title">내 게시물</h2>
    			<hr class="myposts-divider">
    	
    		<div class="myposts-list">
        	<div class="mypost">
            	<img class="mypost-image" src="../assets/images/posts/post-1.jpg" alt="게시물 이미지">
            <div class="mypost-content">
                <h3 class="mypost-title">⚽ 2025 토트넘 경기 일정</h3>
                <p class="mypost-text">이번 시즌 토트넘의 경기 일정을 공유합니다. 챔피언스리그와 프리미어리그 일정을 한눈에 볼 수 있도록 정리했습니다.</p>
            </div>
                <p class="mypost-meta">2025.02.01 게시</p>
            <div class="mypost-stats">
            	<span>👍 800</span>
            	<span>💬 120</span>
            	<span>👁 2,310</span>
            </div>
        </div>
        
        <div class="mypost">
            <img class="mypost-image" src="../assets/images/posts/post-2.jpg" alt="게시물 이미지">
            <div class="mypost-content">
                <h3 class="mypost-title">🌆 올해 꼭 먹어야 할 음식</h3>
                <p class="mypost-text">서울에서 꼭 먹어봐야 할 음식 리스트를 정리해보았습니다. 추천 맛집과 메뉴도 함께 공유합니다!</p>
            </div>
                <p class="mypost-meta">2025.02.01 게시</p>
                <div class="mypost-stats">
                    <span>👍 500</span>
                    <span>💬 80</span>
                    <span>👁 1,910</span>
                </div>
        </div>
        
        <div class="mypost">
            <img class="mypost-image" src="../assets/images/posts/post-3.jpg" alt="게시물 이미지">
            <div class="mypost-content">
                <h3 class="mypost-title">☕ 강남에서 가봐야 할 카페 리스트</h3>
                <p class="mypost-text">강남 지역에서 분위기 좋고 공부하기 좋은 카페를 모아봤어요! 추천할 곳 있으면 댓글로 남겨주세요.</p>
            </div>
                <p class="mypost-meta">2025.02.01 게시</p>
                <div class="mypost-stats">
                    <span>👍 420</span>
                    <span>💬 60</span>
                    <span>👁 1,500</span>
                </div>
        </div>
        
        <div class="mypost">
            <img class="mypost-image" src="../assets/images/posts/post-4.jpg" alt="게시물 이미지">
            <div class="mypost-content">
                <h3 class="mypost-title">🌃 강남에서 야경 보기 좋은 카페</h3>
                <p class="mypost-text">야경이 멋진 강남 카페를 찾아봤어요! 차분한 분위기에서 커피 한 잔하며 야경을 즐길 수 있는 곳 추천합니다.</p>
            	</div>
                <p class="mypost-meta">2025.02.01 게시</p>
                <div class="mypost-stats">
                    <span>👍 380</span>
                    <span>💬 45</span>
                    <span>👁 1,200</span>
                	</div>
        	</div>
        	
        	
        	<div class="mypost">
            <img class="mypost-image" src="../assets/images/posts/post-4.jpg" alt="게시물 이미지">
            <div class="mypost-content">
                <h3 class="mypost-title">🌃 강남에서 야경 보기 좋은 카페</h3>
                <p class="mypost-text">야경이 멋진 강남 카페를 찾아봤어요! 차분한 분위기에서 커피 한 잔하며 야경을 즐길 수 있는 곳 추천합니다.</p>
            	</div>
                <p class="mypost-meta">2025.02.01 게시</p>
                <div class="mypost-stats">
                    <span>👍 380</span>
                    <span>💬 45</span>
                    <span>👁 1,200</span>
                	</div>
        	</div>        	       	
    	</div>	  	
	</div>
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
</body>
<script>
document.addEventListener("DOMContentLoaded", function() {
	const posts = document.querySelectorAll(".mypost");
	const paginationLinks = document.querySelectorAll(".pagination a");
	const prevArrow = document.querySelector(".pagination .arrow:first-child");
	const nextArrow = document.querySelector(".pagination .arrow:last-child");
	
	/* console.log(posts);
	console.log(paginationLinks);
	console.log(prevArrow);
	console.log(nextArrow); */
	
	let currentPage = 1;
	const postPerPage = 4;
	
	console.log("총 ㄱㅔ시글 수 : " + posts.length);
	console.log( "한 페이지당 게시글 수 : " +  postPerPage); 
	console.log("현재 페이지 : " + currentPage);
	
	function updatePagination(){
		paginationContainer.innerHTML = "";
		
		paginationContainer.appendChild(prevArrow);
		
		const totalPages = Math.ceil(posts.length / postPerPage); 
		
		for(let i = 1; i <= totalPages; i++){
			const pageLink = document.createElement("a");
			
		}
	}
	
	/* 게시글 4개씩만 */
	
	function showPosts(){
		posts.forEach((post, i)=>{
			/*  배열 인덱스는 0부터 시작하지만, 페이지는 1부터 시작하므로 -1 */
			if(i >= (currentPage -1) * postPerPage && i < currentPage * postPerPage){
				post.style.display = "flex";
				
			}else{
				post.style.display = "none";
			}
		});
	}

	function changePage(newPage){
		console.log("새로운 페이지로 변경" + newPage);
		
		const totalPages = posts.length / postPerPage;
		
		
		if(newPage < 1 || (newPage - 1) * postPerPage >= posts.length){
			console.error("잘못된 페이지 요청입니다." + newPage);
			return;
		}
		
		console.log("페이지 변경에 성공하였습니다." + currentPage + "-->" +  newPage);
		currentPage = newPage;
		showPosts();	
		}
	
	/* 페이지네이션 버튼 클릭 */
	paginationLinks.forEach((link, index) => {
        link.addEventListener("click", (e) => {
            e.preventDefault();
            console.log("페이지 버튼이 클릭되었습니다." + (index + 1) + "번 페이지");
            changePage(index + 1);
        });
    });
	
	
	/* < 버튼 클릭 */
	prevArrow.addEventListener("click", () => {
        console.log("이전 페이지 버튼 클릭");
        changePage(currentPage - 1);
    });
	
	
	/* > 버튼 클릭  */
	nextArrow.addEventListener("click", () => {
        console.log("다음 페이지 버튼 클릭");
        changePage(currentPage + 1);
    });
	
		
});
		


</script>
</html>
