/**
 * 
 */

const headerToolbar = {
    left: 'prevYear,prev',
    center: 'title',
    right: 'next,nextYear'
}

document.addEventListener("DOMContentLoaded", function () {
	const today = new Date();
	const yyyy = today.getFullYear();
	const mm = String(today.getMonth() + 1).padStart(2, '0');
	const dd = String(today.getDate()).padStart(2, '0');
	const dayNames = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];
	const dayName = dayNames[today.getDay()];
	const fullKoreanDate = `${yyyy}.${mm}.${dd}.${dayName}`;
	const todaySpan = document.querySelector(".today-span");
	
	todaySpan.innerText = fullKoreanDate;
	
	
	const label = document.getElementById("custom-select-label");
	const options = document.querySelector(".custom-select-options");
	const optionItems = document.querySelectorAll(".option");
	const hiddenSelect = document.getElementById("hidden-select");
	

	// 라벨 클릭 → 드롭다운 열기/닫기
	label.addEventListener("click", (e) => {
	  e.stopPropagation();
	  options.classList.toggle("show");
	});

	// 옵션 클릭 → 뷰 전환 + 라벨 변경
	optionItems.forEach(option => {
	  option.addEventListener("click", () => {
	    const value = option.dataset.value;
	    const text = option.innerText;

	    label.innerText = `${text}`;
	    hiddenSelect.value = value;
	    options.classList.remove("show");

	    calendar.changeView(value); // FullCalendar 뷰 변경
	  });
	});

	// 외부 클릭 → 드롭다운 닫기
	document.addEventListener("click", () => {
	  options.classList.remove("show");
	});
	
    const calendarEl = document.getElementById('calendar');

    const calendar = new FullCalendar.Calendar(calendarEl, {
      initialView: 'dayGridMonth',
	  headerToolbar: headerToolbar,
	  locale: 'kr',        // 언어 설정
      selectable: true,
      dateClick: function(info) {
        document.getElementById('start-date').value = info.dateStr;
        document.getElementById('end-date').value = info.dateStr;
        document.getElementById('event-desc').value = '';
      }
    });
	
	todaySpan.addEventListener	("click", (e) => {
			calendar.today();
	});
		

    calendar.render();
});