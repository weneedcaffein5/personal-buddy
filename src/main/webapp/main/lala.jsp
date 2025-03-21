<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@glidejs/glide/dist/css/glide.core.min.css">

  <style>
    .glide__slide {
      background: #eee;
      text-align: center;
      padding: 50px;
      font-size: 2rem;
    }
    
     .glide__arrow {
    background: #333;
    color: #fff;
    border: none;
    padding: 10px 20px;
    font-size: 1.5rem;
    cursor: pointer;
    margin: 10px;
  }
  </style>
</head>
<body>

  <div class="glide">
  <div class="glide__track" data-glide-el="track">
    <ul class="glide__slides">
      <li class="glide__slide">슬라이드 1</li>
      <li class="glide__slide">슬라이드 2</li>
      <li class="glide__slide">슬라이드 3</li>
    </ul>
  </div>
  <!-- 화살표로 넘기기 -->
   <%-- <div class="glide__arrows" data-glide-el="controls">
    <button class="glide__arrow glide__arrow--left" data-glide-dir="<">〈</button>
    <button class="glide__arrow glide__arrow--right" data-glide-dir=">">〉</button>
  </div> --%>
  
  <!-- 점으로 넘기기 -->
  <div class="glide__bullets" data-glide-el="controls[nav]">
  <button class="glide__bullet" data-glide-dir="=0"></button>
  <button class="glide__bullet" data-glide-dir="=1"></button>
  <button class="glide__bullet" data-glide-dir="=2"></button>
</div>
</div>

  <script src="https://cdn.jsdelivr.net/npm/@glidejs/glide/dist/glide.min.js"></script>
  <script>
    document.addEventListener("DOMContentLoaded", function () {
      new Glide('.glide', {
        type: 'carousel',
        perView: 1,
        autoplay: 3000
      }).mount();
    });
  </script>

</body>
</html>