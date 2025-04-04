/* 탭 버튼 */
const tabBtn = document.querySelector(".tab-btn");
const achievementTab = document.getElementById("achievementTab");
const myTreeTab = document.getElementById("myTreeTab");
const pointShopTab = document.getElementById("pointShopTab");

/* 상점 카테고리 */
const pointShopTabStyle = document.querySelectorAll(".point-shop-tab-style");

/* 아이템 선택 */
const item = document.querySelectorAll(".item");
const buyOneItemBox = document.querySelector(".buy-one-item-box");

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
	const selectItemBtn = oneItem.querySelector(".select-item-btn");
	selectItemBtn.addEventListener("click", () => {
		selectItemBtn.textContent = oneItem.classList.contains("item-select-cart") ? "담기" : "취소";
		oneItem.classList.remove("item-select");
		oneItem.querySelectorAll("button").forEach(btn => {
			btn.classList.add("hide");
		})
		oneItem.classList.toggle("item-select-cart");
	})
	
	const buyItemBtn = oneItem.querySelector(".buy-item-btn");
	buyItemBtn.addEventListener("click", () => {
		buyOneItemBox.classList.remove("hide");
	})
})

buyOneItemBox.querySelector(".out-purchase-window").addEventListener("click", () => {
	buyOneItemBox.classList.add("hide");
})

/* 상점 카테고리 */
pointShopTabStyle.forEach((tab) => {
	tab.addEventListener("click", () => {
		pointShopTabStyle.forEach(tabAll => {
			tabAll.classList.remove("point-shop-tab-style-on");
		})
		tab.classList.add("point-shop-tab-style-on");
	})
})
