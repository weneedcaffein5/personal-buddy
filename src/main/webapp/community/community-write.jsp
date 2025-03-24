<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티-글쓰기</title>
<link rel="stylesheet" href="../assets/css/global.css" />
<link rel="stylesheet"
	href="../assets/css/community-write/community-write.css" />
<link rel="stylesheet" href="../assets/css/banner.css" />
</head>
<body>
	<!-- 헤더 -->
	<%@ include file="../layout/header.jsp"%>
	<%@ include file="../layout/banner.jsp"%>
	<div class="page-container">
		<h2 class="title">
			<span class="line1">커뮤니티<br />
			</span> <strong class="line2">글쓰기</strong>
		</h2>
		<hr />
		<form class="form">
			<label for="subject" class="label-margin">제목 <span
				class="required-star">*</span></label> <input type="text" id="subject"
				placeholder="제목을 입력해주세요." required /> <label
				for="category" class="label-margin">카테고리 <span
				class="required-star">*</span></label>
			<div class="custom-select-wrapper">
				<select class="custom-select" required>
					<option value="" disabled selected>카테고리를 선택해주세요.</option>
					<option value="qna">질문</option>
					<option value="free">자유</option>
					<option value="notice">공지</option>
				</select> <span class="custom-arrow">∨</span>
			</div>

			<label for="content" class="label-margin">문의 내용 <span
				class="required-star">*</span></label>
			<textarea id="content" rows="8" placeholder="문의 내용을 입력해주세요."
				maxlength="3000" required></textarea>
			<div class="char-count">
				<span id="count">0</span> / 3000
			</div>

			<label for="file" class="label-margin">파일 첨부</label> <input
				type="file" id="file" />
			<div class="file-info">
				첨부파일은 최대 5개, 30MB까지 등록 가능합니다. <span class="file-size">0MB /
					30MB</span>
			</div>

			<button type="submit" class="submit-btn">등록하기</button>
		</form>
	</div>
</body>
</html>