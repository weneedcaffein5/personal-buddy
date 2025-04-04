/* 장소 추천 */

	document.addEventListener("DOMContentLoaded", function () {
	   const firstItem = document.querySelector(".place-item.active");
	   
	   const placeDetails = document.querySelector(".place-details");

	       const placeLocation = firstItem.querySelector(".place-location").textContent;

	       placeDetails.innerHTML = `
	           <div id="map" style="width:100%; height:520px; border-radius:10px;"></div>
	       `;
	       placeDetails.classList.add("active");

	       const mapContainer = document.getElementById('map');
	       const mapOption = {
	           center: new kakao.maps.LatLng(37.5665, 126.9780),
	           level: 3
	       };
	       const map = new kakao.maps.Map(mapContainer, mapOption);
	       const geocoder = new kakao.maps.services.Geocoder();

	       geocoder.addressSearch(placeLocation, function (result, status) {
	           if (status === kakao.maps.services.Status.OK) {
	               const coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	               map.setCenter(coords);
	               const marker = new kakao.maps.Marker({
	                   map: map,
	                   position: coords
	               });


	               const infowindow = new kakao.maps.InfoWindow({
	                   content: `<div style="padding:5px; font-size:14px;">${placeLocation}</div>`
	               });
	               infowindow.open(map, marker);
	           } else {
	               alert("주소를 찾을 수 없습니다.");
	           }
	       });
	})

		
	document.addEventListener("click", function (e) {
		
    // 클릭한 장소 아이템을 찾음
    const clickedItem = e.target.closest(".place-item");
    if (!clickedItem) return; // 클릭된 요소가 없으면 종료

    // 장소 세부 정보를 표시하는 div
    const placeDetails = document.querySelector(".place-details");

    // 모든 장소 아이템에서 active 클래스를 제거
    document.querySelectorAll(".place-item").forEach(i => i.classList.remove("active"));
    
    // 클릭된 장소에 active 클래스 추가
    clickedItem.classList.add("active");

    // 클릭된 장소의 주소를 가져옴
    const placeLocation = clickedItem.querySelector(".place-location").textContent;
   /* console.log("Clicked place location:", placeLocation); // 클릭된 장소 주소 출력*/

	    // 장소 세부 정보 내용 설정
    placeDetails.innerHTML = `
        <div id="map" style="width:100%; height:520px; border-radius:10px;"></div>
    `;
    placeDetails.classList.add("active"); // 장소 상세 정보를 활성화

    // 카카오 맵 API를 통해 지도 표시
    const mapContainer = document.getElementById('map');
    const mapOption = {
        center: new kakao.maps.LatLng(37.5665, 126.9780), // 기본 서울 위치
        level: 3
    };
    const map = new kakao.maps.Map(mapContainer, mapOption);
    const geocoder = new kakao.maps.services.Geocoder();

    // 주소를 좌표로 변환하여 지도에 표시
    geocoder.addressSearch(placeLocation, function (result, status) {
        if (status === kakao.maps.services.Status.OK) {
            const coords = new kakao.maps.LatLng(result[0].y, result[0].x);
            map.setCenter(coords); // 지도 중심을 해당 위치로 설정
            const marker = new kakao.maps.Marker({
                map: map,
                position: coords // 마커 위치 설정
            });

            const infowindow = new kakao.maps.InfoWindow({
                content: `<div style="padding:5px; font-size:14px;">${placeLocation}</div>`
            });
            infowindow.open(map, marker); // 마커에 정보창 추가
        } else {
            /*console.log("주소를 찾을 수 없습니다."); //주소 찾기 실패 시 출력*/
            alert("주소를 찾을 수 없습니다.");
        }
    });
});



/* 코디 추천 */

document.querySelectorAll('.cloth-thumbnail').forEach(item => {    	
    item.addEventListener('click', function() {       
        document.getElementById('main-cloth').src = this.src;
        document.getElementById('main-desc-title').textContent = this.getAttribute('data-title');
        document.getElementById('main-desc').innerHTML = this.getAttribute('data-desc');
    });
});

/* console.log("Clicked thumbnail:", this.src);
console.log("Title:", this.getAttribute('data-title'));
console.log("Description:", this.getAttribute('data-desc')); */


document.addEventListener("DOMContentLoaded", function(){
	const clothCards = document.querySelectorAll('.cloth-card');
	const modal = document.getElementById('clothModal');
	const closeModalBtn = document.querySelector('.close-btn');
	const addToMyClothesBtn = document.getElementById('addToMyClothes');
	const modalImage = document.getElementById('modalImage');
	const modalTitle = document.getElementById('modalTitle');
	const modalDesc = document.getElementById('modalDesc');
	
	
	// 코디 카드 클릭 시
	clothCards.forEach(card => {
	    card.addEventListener('click', function() {
	       /* console.log("클릭된 코디 카드:", this); // 클릭된 카드 정보*/

	        const title = this.querySelector('.cloth-card-title').textContent;
	        const desc = this.querySelector('.cloth-card-desc').textContent;
	        const imgSrc = this.querySelector('img').src;

	        /*console.log("타이틀:", title); 
	        console.log("설명:", desc); 
	        console.log("이미지 주소:", imgSrc); */
	        
			
	        modalImage.src = imgSrc;
	        modalTitle.textContent = title;
	        modalDesc.textContent = desc;

			/*console.log("Clicked Cloth:", title, desc, imgSrc);*/
			
	        modal.style.display = 'block'; // 모달 열기
			modal.classList.add('active');
	    });
	});
	
	// 내 코디에 추가 버튼 클릭 시
	addToMyClothesBtn.addEventListener('click', function() {
	   /* console.log("내 코디에 추가 버튼 클릭됨");*/

	    // 사용자에게 코디를 추가할 것인지 확인
	    alert("이 코디가 내 코디에 추가되었습니다!");

	    // 추가된 후 모달 닫기
	    modal.style.display = 'none';

	    // 일단 로컬 스토리지에 저장 (DB에 저장하는 코드 추후에 필요)
	    const newCloth = {
	        title: modalTitle.textContent,
	        desc: modalDesc.textContent,
	        img: modalImage.src
	    };

		/*console.log("새로 추가된 코디:", newCloth);*/
		
	    let myClothes = JSON.parse(localStorage.getItem('myClothes')) || [];
	    myClothes.push(newCloth);
	    localStorage.setItem('myClothes', JSON.stringify(myClothes));

	   console.log("내 코디 목록:", myClothes);
	});


	/*모달 닫기*/
	closeModalBtn.addEventListener('click', function(){
		modal.style.display = 'none';
	});
	
});


	
