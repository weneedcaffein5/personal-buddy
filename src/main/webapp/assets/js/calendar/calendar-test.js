
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
	
	document.getElementById('start-date').value = `${yyyy}-${mm}-${dd}`;
	document.getElementById('end-date').value =`${yyyy}-${mm}-${dd}`;
	
	
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
		editable: true,      // event(일정) 
		allDaySlot: false,           // ✅ 이 옵션으로 All-day 칸 제거
		dayCellContent: function(arg) {
		    return arg.date.getDate(); // ✅ 숫자만 반환
	  	},
    });
	                          
	todaySpan.addEventListener	("click", (e) => {
		calendar.today();
	});

    calendar.render();
	calendar.updateSize(); // 클릭 위치와 시간 매칭 맞추기 위해 꼭 호출
	
	calendar.on("eventMouseEnter", info => console.log("eEnter:", info));
	calendar.on("eventMouseLeave", info => console.log("eLeave:", info));
	
	function isTimeIncluded(date) {
		return !(date.getHours() === 0 && date.getMinutes() === 0 && date.getSeconds() === 0);
	}
	
	calendar.on("dateClick", info => {
		const date = info.date;
		const year = date.getFullYear();
		const month = String(date.getMonth() + 1).padStart(2, '0');
		const day = String(date.getDate()).padStart(2, '0');
		
		const formatDate = `${year}-${month}-${day}`;

		let formatStartTime = `00:00`;
		let formatEndTime = `23:59`;
		console.log(info);
		if(isTimeIncluded(date) || info.dateStr.includes("T")){
			let hour = String(date.getHours()).padStart(2, '0');
			let minute = String(date.getMinutes()).padStart(2, '0');
			
			let timeString = `${hour}:${minute}`;
			
			formatStartTime = timeString;
			formatEndTime = timeString;
		}
		console.log(formatEndTime);
		document.getElementById('start-date').value = formatDate;
        document.getElementById('end-date').value = formatDate;
		
		document.getElementById('start-time').value = formatStartTime;
		document.getElementById('end-time').value = formatEndTime;
	});
	
	calendar.on("select", info => {
		const startDate = info.start;
		const startYear = startDate.getFullYear();
		const startMonth = String(startDate.getMonth() + 1).padStart(2, '0');
		const startDay = String(startDate.getDate()).padStart(2, '0');
		
		const formatStartDate = `${startYear}-${startMonth}-${startDay}`;
		
		const endDate = info.end;
		const endYear = endDate.getFullYear();
		const endMonth = String(endDate.getMonth() + 1).padStart(2, '0');
		const endDay = String(endDate.getDate()).padStart(2, '0');
		
		const formatEndDate = `${endYear}-${endMonth}-${endDay}`;

		let formatStartTime = `00:00`;
		let formatEndTime = `23:59`;

		if(isTimeIncluded(startDate)){
			let startHour = String(startDate.getHours()).padStart(2, '0');
			let startMinute = String(startDate.getMinutes()).padStart(2, '0');
			
			let timeString = `${startHour}:${startMinute}`;
			
			formatStartTime = timeString;
		}
		
		if(isTimeIncluded(endDate)){
			let endHour = String(endDate.getHours()).padStart(2, '0');
			let endMinute = String(endDate.getMinutes()).padStart(2, '0');
			
			let timeString = `${endHour}:${endMinute}`;
			
			formatEndTime = timeString;
		}

		
		document.getElementById('start-date').value = formatStartDate;
        document.getElementById('end-date').value = formatEndDate;

		document.getElementById('start-time').value = formatStartTime;
		document.getElementById('end-time').value = formatEndTime;
	});
	
});