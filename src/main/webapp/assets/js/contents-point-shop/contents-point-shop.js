/* 탭 버튼 */
const tabBtn = document.querySelector(".tab-btn");
const achievementTab = document.getElementById("achievementTab");
const myTreeTab = document.getElementById("myTreeTab");
const pointShopTab = document.getElementById("pointShopTab");

/* 상점 카테고리 */
const pointShopTabStyle = document.querySelectorAll(".point-shop-tab-style");

/* 아이템 선택 */
const item = document.querySelectorAll(".item");
const selectItemBtn = document.querySelectorAll(".select-item-btn");

/*아이템 선택*/
item.forEach(oneItem => {
	oneItem.addEventListener("click", () => {
		item.forEach(allItem => {
			allItem.classList.remove("item-select");
			allItem.querySelectorAll("button").forEach(btn => {
				btn.classList.add("hide");
			});
		});
		oneItem.classList.add("item-select");
		oneItem.querySelectorAll("button").forEach(btn => {
			btn.classList.remove("hide");
		});
	})
	oneItem.querySelector(".select-item-btn").addEventListener("click", () => {
		oneItem.classList.remove("item-select");	
	})
})
/*
selectItemBtn.forEach(btn => {
	btn.addEventListener("click", () => {
		btn.closest(".item").querySelectorAll("button").forEach(btn => {
			btn.classList.add("hide");
		})
	})
})*/


/* 상점 카테고리 */
pointShopTabStyle.forEach((tab) => {
	tab.addEventListener("click", () => {
		pointShopTabStyle.forEach(tabAll => {
			tabAll.classList.remove("point-shop-tab-style-on");
		})
		tab.classList.add("point-shop-tab-style-on");
	})
})


/* 탭 버튼 */
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