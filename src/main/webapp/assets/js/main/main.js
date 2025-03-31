/* 장소 추천 */

document.addEventListener("click", function (e) {
    const clickedItem = e.target.closest(".place-item");
    if (!clickedItem) return;

    const placeDetails = document.querySelector(".place-details");
    document.querySelectorAll(".place-item").forEach(i => i.classList.remove("active"));
    clickedItem.classList.add("active");

    const placeLocation = clickedItem.querySelector(".place-location").textContent;

    placeDetails.innerHTML += `
        <div id="map" style="width:100%; height:520px;border-radius:10px;"></div>
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