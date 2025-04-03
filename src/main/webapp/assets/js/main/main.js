/* 장소 추천 */
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