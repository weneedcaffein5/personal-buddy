<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/member-mypage-mycomments.css" />
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
                    <a class="link" href="mypage-mycomments.jsp">내 게시물</a>
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
                <div class="mycomments-container">
                    <p class="mycomments-description">커뮤니티에서 내가 쓴 모든 댓글을 확인할 수 있습니다.</p>
                    <h2 class="mycomments-title">내가 작성한 댓글</h2>
                    <hr class="mycomments-divider">
                    
                    <div class="mycomments-list">
                    
                        <div class="my-comments">
                            <div class="my-comments-content">                           
                                <span class="my-comments-title">게시글 | </span>
                                <span class="my-comments-title">Alive</span>
                                <div class="my-comments-user">
                                    <img class="my-comments-user-image" src="../assets/images/mypage/user-profile1.jpg" alt="유저 프로필">
                                    <span class="my-comments-username">skyoung</span>
                                </div>                             
                                <p class="my-comments-text">
                                    엄..
                                </p>
                            </div>
                            <p class="my-comments-meta">2025.02.01 게시
                                <span>🤍 300</span>
                                <span>👁 1032</span>
                                <span>💬 78</span>
                            </p>
                        </div>	
                        
                        <div class="my-comments">
                            <div class="my-comments-content">                           
                                <span class="my-comments-title">게시글 | </span>
                                <span class="my-comments-title">같이 카공해요</span>
                                <div class="my-comments-user">
                                    <img class="my-comments-user-image" src="../assets/images/mypage/user-profile1.jpg" alt="유저 프로필">
                                    <span class="my-comments-username">skyoung</span>
                                </div>                             
                                <p class="my-comments-text">
                                    아?
                                </p>
                            </div>
                            <p class="my-comments-meta">2025.02.01 게시
                                <span>🤍 300</span>
                                <span>👁 1032</span>
                                <span>💬 78</span>
                            </p>
                        </div>	
                                              
                        <div class="my-comments">
                            <div class="my-comments-content">                           
                                <span class="my-comments-title">게시글 | </span>
                                <span class="my-comments-title">강남에 있는 카페 추천리스트</span>
                                <div class="my-comments-user">
                                    <img class="my-comments-user-image" src="../assets/images/mypage/user-profile1.jpg" alt="유저 프로필">
                                    <span class="my-comments-username">skyoung</span>
                                </div>                             
                                <p class="my-comments-text">
                                    냥냥
                                </p>
                            </div>
                            <p class="my-comments-meta">2025.02.01 게시
                                <span>🤍 300</span>
                                <span>👁 1032</span>
                                <span>💬 78</span>
                            </p>
                        </div>	
                        
                        <div class="my-comments">
                            <div class="my-comments-content">                           
                                <span class="my-comments-title">게시글 | </span>
                                <span class="my-comments-title">같이 카공해요</span>
                                <div class="my-comments-user">
                                    <img class="my-comments-user-image" src="../assets/images/mypage/user-profile1.jpg" alt="유저 프로필">
                                    <span class="my-comments-username">skyoung</span>
                                </div>                             
                                <p class="my-comments-text">
                                    에오
                                </p>
                            </div>
                            <p class="my-comments-meta">2025.02.01 게시
                                <span>🤍 300</span>
                                <span>👁 1032</span>
                                <span>💬 78</span>
                            </p>
                        </div>	
                        
                        <div class="my-comments">
                            <div class="my-comments-content">                           
                                <span class="my-comments-title">게시글 | </span>
                                <span class="my-comments-title">올해 꼭 먹어야 할 음식</span>
                                <div class="my-comments-user">
                                    <img class="my-comments-user-image" src="../assets/images/mypage/user-profile1.jpg" alt="유저 프로필">
                                    <span class="my-comments-username">skyoung</span>
                                </div>                             
                                <p class="my-comments-text">
                                    꾸기가가고
                                </p>
                            </div>
                            <p class="my-comments-meta">2025.02.01 게시
                                <span>🤍 300</span>
                                <span>👁 1032</span>
                                <span>💬 78</span>
                            </p>
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
