<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>컨텐츠 메인</title>
<link rel="stylesheet" href="../assets/css/global.css" />
<link rel="stylesheet" href="../assets/css/header.css" />
<link rel="stylesheet" href="../assets/css/banner.css" />
<link rel="stylesheet" href="../assets/css/contents/contents-mytree.css" />
</head>
<body>

	<%@ include file="../layout/header.jsp"%>
	<%@ include file="../layout/banner.jsp"%>

	<div class="page-container">

		<div class="tab-container">
			<div class="tab-btn"></div>
			<div id="achievementTab" class="tab-text tab-text-off">업적</div>
			<div id="myTreeTab" class="tab-text tab-text-on">나의 성장 나무</div>
			<div id="pointShopTab" class="tab-text tab-text-off">포인트 샵</div>
		</div>


		<div class="contents-container">
			<div class="tree-image">
				<div class="tree-title-word">나의 성장나무🎄</div>
				<div class="tree-wrapper">
					<div class="tree-container">
						<img src="../assets/images/contents/default/default.png">
					</div>
					<div class="tree-button-group">
						<button class="save-button">저장</button>
						<button class="cancel-button">취소</button>
					</div>
				</div>
			</div>



			<!-- 나의꾸미기 -->

			<div class="decorate-container">
				<div class="decorate-title-word">나의 꾸미기🎨</div>
				<div class="decorate-items-container">
					<div class="decorate-tab-container">
						<button class="decorate-tab selected" onclick="showContent('전체')">전체</button>
						<button class="decorate-tab" onclick="showContent('배경')">배경</button>
						<button class="decorate-tab" onclick="showContent('스티커')">스티커</button>
						<button class="decorate-tab" onclick="showContent('나무')">나무</button>
					</div>
					<div class="item-wrapper" id="content-container">
						<%@ include file="contents-sticker.jsp"%>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- 모달 -->

	<div class="set-modal-container">
		<div class="set-modal-background-conntaier">
			<div class="set-modal-top">
				<span>배경 적용</span>
				<button class="out-set-modal">X</button>
			</div>
			<div class="set-modal-bottom">
				<span>배경 사항을 적용하시겠습니까?</span>
				<div>
					<button class="set-modal-ok-button">확인</button>
					<button class="set-modal-no-button">취소</button>
				</div>
			</div>
		</div>
		<div class="black-background"></div>
	</div>

	<script>
	
		
        document.addEventListener("DOMContentLoaded", function () {
            const folderItems = document.querySelectorAll(".folder-item");

            folderItems.forEach((item) => {
                item.addEventListener("click", function () {
                    folderItems.forEach((el) => el.classList.remove("selected"));
                    this.classList.add("selected");
                });
            });

            const tabElements = document.querySelectorAll(".decorate-tab");

            tabElements.forEach((element) => {
                element.addEventListener("click", function () {
                    tabElements.forEach((el) => el.classList.remove("selected"));
                    this.classList.add("selected");
                });
            });
        });
        
        const achievementTab = document.getElementById("achievementTab");
        const myTreeTab = document.getElementById("myTreeTab");
        const pointShopTab = document.getElementById("pointShopTab");
        const tabBtn = document.querySelector(".tab-btn");

        // 처음에는 myTreeTab이 활성화 상태
        myTreeTab.classList.add("tab-text-on");
        achievementTab.classList.add("tab-text-off");
        pointShopTab.classList.add("tab-text-off");

        // 탭 클릭 이벤트 추가
        achievementTab.addEventListener("click", () => {
            tabBtn.style.transform = "translateX(0%)";  // 첫 번째 탭으로 이동

            achievementTab.classList.add("tab-text-on");
            achievementTab.classList.remove("tab-text-off");
            myTreeTab.classList.add("tab-text-off");
            myTreeTab.classList.remove("tab-text-on");
            pointShopTab.classList.add("tab-text-off");
            pointShopTab.classList.remove("tab-text-on");
        });

        myTreeTab.addEventListener("click", () => {
            tabBtn.style.transform = "translateX(100%)";  // 기본 위치(두 번째 탭)로 이동

            myTreeTab.classList.add("tab-text-on");
            myTreeTab.classList.remove("tab-text-off");
            achievementTab.classList.add("tab-text-off");
            achievementTab.classList.remove("tab-text-on");
            pointShopTab.classList.add("tab-text-off");
            pointShopTab.classList.remove("tab-text-on");
        });

        pointShopTab.addEventListener("click", () => {
            tabBtn.style.transform = "translateX(200%)";  // 세 번째 탭으로 이동

            pointShopTab.classList.add("tab-text-on");
            pointShopTab.classList.remove("tab-text-off");
            myTreeTab.classList.add("tab-text-off");
            myTreeTab.classList.remove("tab-text-on");
            achievementTab.classList.add("tab-text-off");
            achievementTab.classList.remove("tab-text-on");
        });
      

        function attachFolderItemClickEvent() {
            const folderItems = document.querySelectorAll(".folder-item");
            folderItems.forEach((item) => {
                item.addEventListener("click", function () {
                    folderItems.forEach((el) => el.classList.remove("selected"));
                    this.classList.add("selected");
                });
            });
        }

        function showContent(category) {
            document.querySelectorAll(".decorate-tab").forEach(tab => {
                tab.classList.remove("selected");
            });

            document.querySelectorAll(".decorate-tab").forEach(tab => {
                if (tab.textContent.trim() === category) {
                    tab.classList.add("selected");
                }
            });

            let fileName = "";
            switch (category) {
                case "전체":
                    fileName = "contents-all.jsp";
                    break;
                case "배경":
                    fileName = "contents-background.jsp";
                    break;
                case "스티커":
                    fileName = "contents-sticker.jsp";
                    break;
                case "나무":
                    fileName = "contents-tree.jsp";
                    break;
                default:
                    fileName = "contents-background.jsp";
            }

            fetch(fileName)
                .then(response => {
                    if (!response.ok) {
                        throw new Error("Network response was not ok");
                    }
                    return response.text();
                })
                .then(data => {
                    document.getElementById("content-container").innerHTML = data;

                    attachFolderItemClickEvent();
                })
                .catch(error => console.error("Error loading content:", error));
        }
        
        document.addEventListener("DOMContentLoaded", function () {
        	  const modal = document.querySelector(".set-modal-container");
        	  const noButton = document.querySelector(".set-modal-no-button");

        	  document.getElementById("content-container").addEventListener("click", function (e) {
        	    if (e.target.classList.contains("change-button")) {
        	      modal.classList.add("active");
        	    }
        	  });

        	  noButton.addEventListener("click", () => {
        	    modal.classList.remove("active");
        	  });
        	});
		
    </script>
</body>
</html>