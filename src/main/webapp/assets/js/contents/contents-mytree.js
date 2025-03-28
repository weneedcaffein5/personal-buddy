
// 상단 탭 관련 변수 
const achievementTab = document.getElementById("achievementTab");
const myTreeTab = document.getElementById("myTreeTab");
const pointShopTab = document.getElementById("pointShopTab");
const tabBtn = document.querySelector(".tab-btn");

// 초기 탭 상태 설정
myTreeTab.classList.add("tab-text-on");
achievementTab.classList.add("tab-text-off");
pointShopTab.classList.add("tab-text-off");

// 탭 클릭 이벤트
achievementTab.addEventListener("click", () => {
  tabBtn.style.transform = "translateX(0%)";
  achievementTab.classList.add("tab-text-on");
  achievementTab.classList.remove("tab-text-off");
  myTreeTab.classList.add("tab-text-off");
  myTreeTab.classList.remove("tab-text-on");
  pointShopTab.classList.add("tab-text-off");
  pointShopTab.classList.remove("tab-text-on");
});

myTreeTab.addEventListener("click", () => {
  tabBtn.style.transform = "translateX(100%)";
  myTreeTab.classList.add("tab-text-on");
  myTreeTab.classList.remove("tab-text-off");
  achievementTab.classList.add("tab-text-off");
  achievementTab.classList.remove("tab-text-on");
  pointShopTab.classList.add("tab-text-off");
  pointShopTab.classList.remove("tab-text-on");
});

pointShopTab.addEventListener("click", () => {
  tabBtn.style.transform = "translateX(200%)";
  pointShopTab.classList.add("tab-text-on");
  pointShopTab.classList.remove("tab-text-off");
  myTreeTab.classList.add("tab-text-off");
  myTreeTab.classList.remove("tab-text-on");
  achievementTab.classList.add("tab-text-off");
  achievementTab.classList.remove("tab-text-on");
});

// 콘텐츠 탭 내용 로드 함수
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

// 폴더 아이템 선택 이벤트 함수 (동적 콘텐츠용)
function attachFolderItemClickEvent() {
  const folderItems = document.querySelectorAll(".folder-item");
  folderItems.forEach((item) => {
    item.addEventListener("click", function () {
      folderItems.forEach((el) => el.classList.remove("selected"));
      this.classList.add("selected");
    });
  });
}

document.addEventListener("DOMContentLoaded", function () {
  // 폴더 아이템 선택
  const folderItems = document.querySelectorAll(".folder-item");
  folderItems.forEach((item) => {
    item.addEventListener("click", function () {
      folderItems.forEach((el) => el.classList.remove("selected"));
      this.classList.add("selected");
    });
  });

  // 꾸미기 탭 클릭 시 selected 클래스 관리
  const tabElements = document.querySelectorAll(".decorate-tab");
  tabElements.forEach((element) => {
    element.addEventListener("click", function () {
      tabElements.forEach((el) => el.classList.remove("selected"));
      this.classList.add("selected");
    });
  });

  const modal = document.querySelector(".set-modal-container");
  const noButton = document.querySelector(".set-modal-no-button");
  const contentContainer = document.querySelector(".contents-container");

  contentContainer.addEventListener("click", function (e) {
    if (e.target.classList.contains("save-button")) {
      document.getElementById("modal-title").textContent = "저장";
      document.getElementById("modal-message").textContent = "저장하시겠습니까?";
      modal.classList.add("active");
    }
  });

  noButton.addEventListener("click", () => {
    modal.classList.remove("active");
  });
  
});