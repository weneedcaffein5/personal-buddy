const eventTab = document.getElementById("eventTab");
const boardTab = document.getElementById("boardTab");
const tabBtn = document.querySelector(".tab-btn");

eventTab.addEventListener("click", () => {
    tabBtn.classList.remove("tab-btn-change");
    eventTab.classList.add("tab-text-on");
    eventTab.classList.remove("tab-text-off");
    boardTab.classList.add("tab-text-off");
    boardTab.classList.remove("tab-text-on");
});

boardTab.addEventListener("click", () => {
    tabBtn.classList.add("tab-btn-change");
    boardTab.classList.add("tab-text-on");
    boardTab.classList.remove("tab-text-off");
    eventTab.classList.add("tab-text-off");
    eventTab.classList.remove("tab-text-on");
});