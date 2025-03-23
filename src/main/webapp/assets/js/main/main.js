/* 장소 추천 */
document.addEventListener("click", function (e) {
	/*  const clickedItem = e.target.value(".place-item"); */
    const clickedItem = e.target.closest(".place-item");
    /* console.log(clickedItem); */
    if (!clickedItem) {
    	return;
    }    

    const placeDetails = document.querySelector(".place-details");
    
    document.querySelectorAll(".place-item").forEach(i => i.classList.remove("active"));
    clickedItem.classList.add("active");
    
    const placeName = clickedItem.querySelector(".place-name").textContent;
    const placeSub = clickedItem.querySelector(".place-sub").textContent;
    const placeRating = clickedItem.querySelector(".place-rating").textContent;
    const placeLocation = clickedItem.querySelector(".place-location").textContent;
    const placeImg = clickedItem.querySelector("img").src;
    
    
    
    /* console.log(placeName);
    console.log(placeSub);
    console.log(placeRating);
    console.log(placeLocation);
    console.log(placeImg); */
  
    placeDetails.innerHTML = `	
        <p>${placeLocation}</p>`;

    placeDetails.classList.add("active");
    /*  console.log(placeDetails.classList); */
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