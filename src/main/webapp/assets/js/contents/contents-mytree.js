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

  // 선택된 ID 전역 변수
  let selectedTreeId = null;
  let selectedBackgroundId = null;

  // 배경 이미지 ID → 파일명 매핑
  const backgroundImageMap = {
    1: "field-bg.png",
    2: "beach-bg.png",
    3: "cherry-tree-bg.png",
    4: "night-field-bg.png",
    5: "halloween-bg.png",
    6: "rain-mountain-bg.png",
    7: "dessert-bg.png",
    8: "lego-building-bg.png",
    9: "snow-bg.png",
    10: "dream-field-bg.png",
    11: "rain-ocean-bg.png",
    12: "field-bg2.png",
  };

  // 모달 관련 요소
  const modal = document.querySelector(".set-modal-container");
  const noButton = document.querySelector(".set-modal-no-button");
  const yesButton = document.querySelector(".set-modal-ok-button");
  const contentContainer = document.querySelector(".contents-container");
  const modalTitle = document.getElementById("modal-title");
  const modalMessage = document.getElementById("modal-message");

  // 변경 버튼 클릭 시 미리보기 변경
  document.addEventListener("click", function (e) {
    if (e.target.classList.contains("change-button")) {
      const treeForm = e.target.closest(".tree-change-form");
      const backgroundForm = e.target.closest(".background-change-form");

      //  나무
      if (treeForm) {
        selectedTreeId = treeForm.querySelector("input[name='selectedTreeId']").value;
        const treeImage = document.getElementById("treeImage");
        if (treeImage) {
          treeImage.src = `../assets/images/contents/tree/tree${selectedTreeId}.png`;
          treeImage.classList.add("enlarged");
        }
        console.log(" 선택된 나무:", selectedTreeId);
      }

      //  배경
      if (backgroundForm) {
        selectedBackgroundId = backgroundForm.querySelector("input[name='selectedBackgroundId']").value;
        const bgImage = document.getElementById("backgroundImage");
        if (bgImage && backgroundImageMap[selectedBackgroundId]) {
          bgImage.src = `../assets/images/contents/${backgroundImageMap[selectedBackgroundId]}`;
        }
        console.log(" 선택된 배경:", selectedBackgroundId);
      }
    }
  });

  // 저장 버튼 클릭 시 모달 열기
  contentContainer.addEventListener("click", function (e) {
    if (e.target.classList.contains("save-button")) {
      if (!selectedTreeId && !selectedBackgroundId) {
        alert("변경된 사항이 없습니다.");
        return;
      }

      modalTitle.textContent = "저장";
      modalMessage.textContent = "저장하시겠습니까?";
      modal.classList.add("active");
    }
  });

  // 모달 취소 버튼
  noButton.addEventListener("click", () => {
    modal.classList.remove("active");
  });

  // 모달 확인 버튼 → form 전송
  yesButton.addEventListener("click", () => {
    if (selectedTreeId) {
      document.getElementById("finalSelectedTreeId").value = selectedTreeId;
      document.getElementById("saveTreeForm").submit();
    }

    if (selectedBackgroundId) {
      document.getElementById("finalSelectedBackgroundId").value = selectedBackgroundId;
      document.getElementById("saveBackgroundForm").submit();
    }
  });
  
});