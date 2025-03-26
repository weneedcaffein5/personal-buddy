/* 태그 셀렉터 */
const tags = document.querySelectorAll(".tag");

tags.forEach(tag => {
    tag.addEventListener("click", () => {
        tag.classList.toggle("selected");
    });
});

/* 쿼리스트링으로 카테고리값 전달 */

const nextBtn = document.querySelector(".next-btn");
const selected = document.querySelectorAll(".selected");
let index = 0;

nextBtn.addEventListener("click", () => {
	tags.forEach((tag) => {
		if(tag.classList.contains("selected")){
			index = index + 1;
			console.log(tag.textContent);
		};
	})
	console.log(index + " 선택된 태그 수")
})
