<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String contextPath = request.getContextPath();
	String selectedSort = request.getParameter("sort");
	if (selectedSort == null) selectedSort = "latest";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/global.css" />
<link rel="stylesheet" href="../assets/css/header.css">
<link rel="stylesheet" href="../assets/css/banner.css">
<link rel="stylesheet" href="../assets/css/community/community-main.css">

<title>커뮤니티</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	<%@ include file="../layout/banner.jsp" %>
	
    <div class="container">
		<div class="tab-box">
			<div class="tab-container">
				<div class="tab-btn"></div>
				<div id="eventTab" class="tab-text tab-text-on">
					<a href="../event/event-main.jsp">EVENT</a>
				</div>
				<div id="boardTab" class="tab-text tab-text-off">
					<a href="community-main.community">BOARD</a>
				</div>
			</div>
	    </div>
		<div class="board-sub-title">TOP10</div>
		<div class="board-main-title">버디들의 HOT 🔥</div>
		<div class="hot-container">
			<div class="button-left">
				<img id="leftImg" src="../assets/images/community/button-left-on.png" />
			</div>
	        <div class="hot">
				<div class="hot-contents" id="slider">
						<div class="content">
							<a class="image-container" href="#">
								<img class="img" src="../assets/images/community/post1.png">
								<div class="number-box">1</div>
							</a>
							<span class="tag">자유 게시글</span>
							<span class="content-name">자바 껌이죠</span>
							<div class="user-info">
							<img class="mini-profile" src="../assets/images/mypage/user-profile1.jpg">
							<span class="user-nickname">따자하오영수</span>
						</div>
							<span class="content-date">2025.02.01 게시</span>
							<div class="content-info">
								<span class="likes"><img class="icon" src="../assets/images/community/like-icon.png">600</span>
								<span class="views"><img class="icon" src="../assets/images/community/view-icon.png">9999+</span>
								<span class="comments"><img class="icon" src="../assets/images/community/comment-icon.png">78</span>
							</div>
							
						</div>
						<div class="content">
							<a class="image-container" href="#">
								<img class="img" src="../assets/images/community/post2.png">
								<div class="number-box">2</div>
							</a>
							<span class="tag">관심 일정</span>
							<span class="content-name">퍼스널 버디 일정 관리 잘 된다</span>
							<div class="user-info">
							<img class="mini-profile" src="../assets/images/mypage/user-profile1.jpg">
							<span class="user-nickname">파워제이</span>
						</div>
							<span class="content-date">2025.02.01 게시</span>
							<div class="content-info">
								<span class="likes"><img class="icon" src="../assets/images/community/like-icon.png">600</span>
								<span class="views"><img class="icon" src="../assets/images/community/view-icon.png">9999+</span>
								<span class="comments"><img class="icon" src="../assets/images/community/comment-icon.png">78</span>
							</div>
						</div>
						<div class="content">
							<a class="image-container" href="community-post.jsp">
								<img class="img" src="../assets/images/community/post3.png">
								<div class="number-box">3</div>
							</a>
							<span class="tag">공유 일정</span>
							<span class="content-name">⚽ 2025 챔피언스 리그 16강 대진표</span>
							<div class="user-info">
							<img class="mini-profile" src="../assets/images/mypage/user-profile1.jpg">
							<span class="user-nickname">슛돌이</span>
						</div>
							<span class="content-date">2025.02.01 게시</span>
							<div class="content-info">
								<span class="likes"><img class="icon" src="../assets/images/community/like-icon.png">600</span>
								<span class="views"><img class="icon" src="../assets/images/community/view-icon.png">9999+</span>
								<span class="comments"><img class="icon" src="../assets/images/community/comment-icon.png">78</span>
							</div>
						</div>
						<div class="content">
							<a class="image-container" href="#">
								<img class="img" src="../assets/images/community/jinyoung-oni.png">
								<div class="number-box">4</div>
							</a>
							<span class="tag">관심 일정</span>
							<span class="content-name">진영오니 입니다</span>
							<div class="user-info">
							<img class="mini-profile" src="../assets/images/mypage/user-profile1.jpg">
							<span class="user-nickname">진진자라</span>
						</div>
							<span class="content-date">2025.02.01 게시</span>
							<div class="content-info">
								<span class="likes"><img class="icon" src="../assets/images/community/like-icon.png">600</span>
								<span class="views"><img class="icon" src="../assets/images/community/view-icon.png">9999+</span>
								<span class="comments"><img class="icon" src="../assets/images/community/comment-icon.png">78</span>
							</div>
						</div>
						<div class="content">
						<a class="image-container" href="#">
							<img class="img" src="../assets/images/community/jihyun-oni.png">
							<div class="number-box">5</div>
						</a>
						<span class="tag">관심 일정</span>
						<span class="content-name">지현오니 입니다</span>
						<div class="user-info">
							<img class="mini-profile" src="../assets/images/mypage/user-profile1.jpg">
							<span class="user-nickname">함지옥</span>
						</div>
						<span class="content-date">2025.02.01 게시</span>
						<div class="content-info">
							<span class="likes"><img class="icon" src="../assets/images/community/like-icon.png">600</span>
							<span class="views"><img class="icon" src="../assets/images/community/view-icon.png">9999+</span>
							<span class="comments"><img class="icon" src="../assets/images/community/comment-icon.png">78</span>
						</div>
					</div>
						<div class="content">
						<a class="image-container" href="#">
							<img class="img" src="../assets/images/community/jangtachi.jpg">
							<div class="number-box">6</div>
						</a>
						<span class="tag">관심 일정</span>
						<span class="content-name">환술 거는 법</span>
						<div class="user-info">
							<img class="mini-profile" src="../assets/images/mypage/user-profile1.jpg">
							<span class="user-nickname">장타치</span>
						</div>
						<span class="content-date">2025.02.01 게시</span>
						<div class="content-info">
							<span class="likes"><img class="icon" src="../assets/images/community/like-icon.png">600</span>
							<span class="views"><img class="icon" src="../assets/images/community/view-icon.png">9999+</span>
							<span class="comments"><img class="icon" src="../assets/images/community/comment-icon.png">78</span>
						</div>
					</div>
						<div class="content">
						<a class="image-container" href="#">
							<img class="img" src="../assets/images/community/jangtachi.jpg">
							<div class="number-box">7</div>
						</a>
						<span class="tag">관심 일정</span>
						<span class="content-name">환술 거는 법</span>
						<div class="user-info">
							<img class="mini-profile" src="../assets/images/mypage/user-profile1.jpg">
							<span class="user-nickname">장타치</span>
						</div>
						<span class="content-date">2025.02.01 게시</span>
						<div class="content-info">
							<span class="likes"><img class="icon" src="../assets/images/community/like-icon.png">600</span>
							<span class="views"><img class="icon" src="../assets/images/community/view-icon.png">9999+</span>
							<span class="comments"><img class="icon" src="../assets/images/community/comment-icon.png">78</span>
						</div>
					</div>
						<div class="content">
						<a class="image-container" href="#">
							<img class="img" src="../assets/images/community/jangtachi.jpg">
							<div class="number-box">8</div>
						</a>
						<span class="tag">관심 일정</span>
						<span class="content-name">환술 거는 법</span>
						<div class="user-info">
							<img class="mini-profile" src="../assets/images/mypage/user-profile1.jpg">
							<span class="user-nickname">장타치</span>
						</div>
						<span class="content-date">2025.02.01 게시</span>
						<div class="content-info">
							<span class="likes"><img class="icon" src="../assets/images/community/like-icon.png">600</span>
							<span class="views"><img class="icon" src="../assets/images/community/view-icon.png">9999+</span>
							<span class="comments"><img class="icon" src="../assets/images/community/comment-icon.png">78</span>
						</div>
					</div>
						<div class="content">
						<a class="image-container" href="#">
							<img class="img" src="../assets/images/community/jangtachi.jpg">
							<div class="number-box">9</div>
						</a>
						<span class="tag">관심 일정</span>
						<span class="content-name">환술 거는 법</span>
						<div class="user-info">
							<img class="mini-profile" src="../assets/images/mypage/user-profile1.jpg">
							<span class="user-nickname">장타치</span>
						</div>
						<span class="content-date">2025.02.01 게시</span>
						<div class="content-info">
							<span class="likes"><img class="icon" src="../assets/images/community/like-icon.png">600</span>
							<span class="views"><img class="icon" src="../assets/images/community/view-icon.png">9999+</span>
							<span class="comments"><img class="icon" src="../assets/images/community/comment-icon.png">78</span>
						</div>
					</div>
						<div class="content">
						<a class="image-container" href="#">
							<img class="img" src="../assets/images/community/jangtachi.jpg">
							<div class="number-box">10</div>
						</a>
						<span class="tag">관심 일정</span>
						<span class="content-name">환술 거는 법</span>
						<div class="user-info">
							<img class="mini-profile" src="../assets/images/mypage/user-profile1.jpg">
							<span class="user-nickname">장타치</span>
						</div>
						<span class="content-date">2025.02.01 게시</span>
						<div class="content-info">
							<span class="likes"><img class="icon" src="../assets/images/community/like-icon.png">600</span>
							<span class="views"><img class="icon" src="../assets/images/community/view-icon.png">9999+</span>
							<span class="comments"><img class="icon" src="../assets/images/community/comment-icon.png">78</span>
						</div>
					</div>
				</div>
			</div>
			<div class="button-right">
				<img id="rightImg" src="../assets/images/community/button-right-on.png" />
			</div>
		</div>

		<div class="post-container">
			<div class="post-array">
				<span class="post-sort active" data-sort="latest">최신 순</span>
				<span class="divider">|</span>
				<span class="post-sort" data-sort="likes">좋아요 순</span>
				<span class="divider">|</span>
				<span class="post-sort" data-sort="views">조회 순</span>
			</div>
			<div class="main2">
				<div class="main2-left">
					<div class="community-info">
		            	<div class="event-sub-title">어디에도 풀지 못했던 은밀한 TMI</div>
		            	<div class="event-main-title">버디들의 자유 게시판 💭</div>
					</div>
					<div class="main2-center">
						<div class="post-search">
			            	<form class="search-form" action="#" method="get">
			            		<input type="text" class="search-box" placeholder="검색어를 입력해주세요.">
			            		<button type="submit" class ="search-button">
    								<img src="../assets/images/community/search-icon.png" alt="검색" />
  								</button>
			            	</form>
						</div>
		        		<div class="tags">
		            		<span class="search-tag" data-hashtag="관심 일정">#관심 일정</span>
		            		<span class="search-tag" data-hashtag="자유 게시글">#자유 게시글</span>
		            		<span class="search-tag" data-hashtag="공유 일정">#공유 일정</span>
		        		</div>
					</div>
				</div>
				<div class="main2-right">
	        		<div class="button-container">
	            		<button class="write-button">
	            			<a class="go-write" href="community-write.jsp">글쓰기</a>
	            		</button>
	        		</div>
				</div>
        	</div>
			<div class="post-contents">
				<jsp:include page="partial-post-list.jsp" />
			</div>
		</div>
	</div>
<script>
document.addEventListener("DOMContentLoaded", function () {
  // ⭐ 슬라이더 로직
  let currentIndex = 0;

  const items = document.querySelectorAll(".content");
  const totalItems = items.length;
  const visibleItems = 3;
  const itemWidth = items[0]?.offsetWidth || 300;
  const gap = 100;
  const contentWidth = itemWidth + gap;

  const leftBtnImg = document.getElementById("leftImg");
  const rightBtnImg = document.getElementById("rightImg");

  document.querySelector(".button-left").addEventListener("click", function () {
    if (currentIndex > 0) {
      currentIndex--;
      updateSlider();
    }
  });

  document.querySelector(".button-right").addEventListener("click", function () {
    if (currentIndex < totalItems - visibleItems) {
      currentIndex++;
      updateSlider();
    }
  });

  function updateSlider() {
    const slider = document.getElementById("slider");
    const offset = contentWidth * currentIndex;
    slider.style.setProperty("transform", "translateX(" + (-offset) + "px)");
    updateButtonImages();
  }

  function updateButtonImages() {
    leftBtnImg.src = currentIndex === 0
      ? "../assets/images/community/button-left-off.png"
      : "../assets/images/community/button-left-on.png";
    rightBtnImg.src = currentIndex >= totalItems - visibleItems
      ? "../assets/images/community/button-right-off.png"
      : "../assets/images/community/button-right-on.png";
  }

  updateButtonImages();
});

// ⭐ 태그 선택 로직
const tags = document.querySelectorAll(".search-tag");

tags.forEach(function (tag) {
  tag.addEventListener("click", function () {
    if (tag.classList.contains("selected")) {
      tag.classList.remove("selected");
    } else {
      tags.forEach(function (t) {
        t.classList.remove("selected");
      });
      tag.classList.add("selected");
    }
  });
});

// ⭐ 정렬 및 필터 비동기 처리
const sortButtons = document.querySelectorAll(".post-sort");
const hashtagTags = document.querySelectorAll(".search-tag");

let currentSort = "latest";
let currentHashtag = "";

function updatePosts() {
  const contextPath = "${pageContext.request.contextPath}";
  fetch(contextPath + "/community/community-sort.community?sort=" + currentSort + "&hashtag=" + encodeURIComponent(currentHashtag))
    .then(function (res) {
      return res.text();
    })
    .then(function (html) {
      document.querySelector(".post-contents").innerHTML = html;
    })
    .catch(function (e) {
      console.error("정렬/필터 실패", e);
    });
}

// 정렬 버튼 이벤트
sortButtons.forEach(function (button) {
  button.addEventListener("click", function () {
    sortButtons.forEach(function (btn) {
      btn.classList.remove("active");
    });
    button.classList.add("active");
    currentSort = button.dataset.sort;
    updatePosts();
  });
});

// 해시태그 필터 이벤트
hashtagTags.forEach(function (tag) {
  tag.addEventListener("click", function () {
    if (tag.classList.contains("selected")) {
      tag.classList.remove("selected");
      currentHashtag = "";
    } else {
      hashtagTags.forEach(function (t) {
        t.classList.remove("selected");
      });
      tag.classList.add("selected");
      currentHashtag = tag.dataset.hashtag;
    }
    console.log("🔍 현재 해시태그:", currentHashtag);
    updatePosts();
  });
});
</script>
</body>


</html> 