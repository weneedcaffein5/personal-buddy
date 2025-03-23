/* 탭 버튼 */

const tabBtn = document.querySelector(".tab-btn");
const achievementTab = document.getElementById("achievementTab");
const myTreeTab = document.getElementById("myTreeTab");
const pointShopTab = document.getElementById("pointShopTab");

/* 상점 카테고리 */

const pointShopTabStyle = document.querySelectorAll(".point-shop-tab-style");

pointShopTabStyle.forEach((tab) => {
	tab.addEventListener("click", () => {
		tab.classList.add("point-shop-tab-style-on");
	})
})

achievementTab.addEventListener("click", () => {
	tabBtn.classList.add("tab-btn-0")
	tabBtn.classList.remove("tab-btn-200")
	achievementTab.classList.add("tab-text-on");
    achievementTab.classList.remove("tab-text-off");
    myTreeTab.classList.add("tab-text-off");
    myTreeTab.classList.remove("tab-text-on");
    pointShopTab.classList.add("tab-text-off");
    pointShopTab.classList.remove("tab-text-on");
});

myTreeTab.addEventListener("click", () => {
	tabBtn.classList.remove("tab-btn-0" ,"tab-btn-200")
	myTreeTab.classList.add("tab-text-on");
    myTreeTab.classList.remove("tab-text-off");
    achievementTab.classList.add("tab-text-off");
    achievementTab.classList.remove("tab-text-on");
    pointShopTab.classList.add("tab-text-off");
    pointShopTab.classList.remove("tab-text-on");
});

pointShopTab.addEventListener("click", () => {
	tabBtn.classList.remove("tab-btn-0")
	tabBtn.classList.add("tab-btn-200")
	pointShopTab.classList.add("tab-text-on");
    pointShopTab.classList.remove("tab-text-off");
    myTreeTab.classList.add("tab-text-off");
    myTreeTab.classList.remove("tab-text-on");
    achievementTab.classList.add("tab-text-off");
    achievementTab.classList.remove("tab-text-on");
});