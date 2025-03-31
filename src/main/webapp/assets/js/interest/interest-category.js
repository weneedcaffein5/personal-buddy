/* 태그 셀렉터 */
const tags = document.querySelectorAll(".tag");

tags.forEach(tag => {
    tag.addEventListener("click", () => {
        tag.classList.toggle("selected");
    });
});

/* 쿼리스트링으로 카테고리값 전달 */
const nextBtn = document.querySelector(".next-btn");
const hiddenInput = document.querySelector(".hidden-input");
const nextForm = document.querySelector(".next-form");
let selectedValues = [];

nextBtn.addEventListener("click", () => {
	selectedValues.length = 0;
	tags.forEach(tag => {
		if(tag.classList.contains("selected")){
			selectedValues.push(tag.textContent);
		}
	})
	console.log(selectedValues);
	if(selectedValues.length <= 1) {
		alert("최소 2개 이상의 카테고리를 선택해 주세요.");
		selectedValues.length = 0;
		return;
	};
	hiddenInput.value = selectedValues.join(",");
    nextForm.submit();
})
