<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="banner-container">	
   	<div class="banner-wrapper" id="bannerWrapper">
   	
   		<!-- <a href="../contents/contents-achievement.jsp"> -->
    	<div class="banner-slide clone" id="banner-slide">
		  <img src="../assets/images/main/banner-yellow.png" class="banner-slide" alt="배너 3(복사)">
		  <div class="banner-text">
		    <p class="banner-subtitle">버디들이 관심 있는 일정은?</p>
		    <h2 class="banner-title">버디들의 관심 일정을 <br> 공유해주세요!</h2>
		  </div>
		</div>
    	<!-- </a> -->
    	
   		<div class="banner-slide" id="banner-slide" data-link="../main/main.main">
       		<img src="../assets/images/main/banner-blue.png" class="banner-slide" alt="배너 1">
       		<div class="banner-text">
       			<p class="banner-subtitle">버디들이 관심 있는 일정은?</p>
       			<h2 class="banner-title">버디들의 관심 일정을 <br> 공유해주세요!</h2>
   			</div>
   		</div>
   		<div class="banner-slide" id="banner-slide"  data-link="../contents/contents-achievement.jsp">
       		<img src="../assets/images/main/banner-green.png" class="banner-slide" alt="배너 2">
       		<div class="banner-text">
       			<p class="banner-subtitle">나의 업적</p>
       			<h2 class="banner-title">버디들의 업적을 <br> 확인해보세요!</h2>
   			</div>
   		</div>
   		<div class="banner-slide" id="banner-slide" data-link="../contents/contents-mytree.contents">
       		<img src="../assets/images/main/banner-yellow.png" class="banner-slide" alt="배너 3">
       		<div class="banner-text">
       			<p class="banner-subtitle">성장나무</p>
       			<h2 class="banner-title">버디들의 성장나무는 <br> 어떻게 꾸며졌나요?</h2>
   			</div>
   		</div>
   		
   		<div class="banner-slide clone" id="banner-slide">
       		<img src="../assets/images/main/banner-blue.png" class="banner-slide" alt="배너 1(복사)">
       		<div class="banner-text">
       			<p class="banner-subtitle">버디들이 관심 있는 일정은?</p>
       			<h2 class="banner-title">버디들의 관심 일정을 <br> 공유해주세요!</h2>
   			</div>
   		</div> 
   	</div>
	<!-- <div class="nav-button left" onclick="prevSlide()"><</div>
	<div class="nav-button right" onclick="nextSlide()">></div> -->
	<div class="dots" id="dots"></div>
</div>
<script src="../assets/js/banner.js"></script>
