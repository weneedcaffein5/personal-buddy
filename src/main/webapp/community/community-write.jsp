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
<link rel="stylesheet" href="../assets/css/header.css" />
<link rel="stylesheet" href="../assets/css/banner.css" />
<link rel="stylesheet"
	href="../assets/css/community/community-write.css" />
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<%@ include file="../layout/banner.jsp"%>

	<div class="page-container">
		<div class="title">

			<div class="title-container">
				<span class="line1">커뮤니티<br /></span> <strong class="line2">글쓰기</strong>

			</div>
		</div>

		<hr />

		<div class="form-container">
			<form class="form" method="post" action="writeOk.community">
				<div class="title-container">
					<label for="subject">제목 <span class="required-star">*</span></label>
					<input type="text" id="subject" placeholder="제목을 입력해주세요." required
						class="custom-input" />
				</div>

				<div class="category-container">
					<label for="category">카테고리 <span class="required-star">*</span></label>
					<div class="custom-select-wrapper">
						<select class="custom-select" required>
							<option value="" disabled selected>카테고리를 선택해주세요.</option>
							<option value="qna">질문</option>
							<option value="free">자유</option>
							<option value="notice">공지</option>
						</select> <span class="custom-arrow">∨</span>
					</div>
				</div>

				<div class="file-content-container">
					<div class="content-count-container">
						<div class="content-container">
							<label for="content">글 내용 <span class="required-star">*</span></label>
							<textarea id="content" rows="8" placeholder="내용을 입력해주세요."
								maxlength="3000" required class="custom-content-input"></textarea>
						</div>
						<div class="char-count">
							<span id="count" class="bold">0</span> / 3000
						</div>
					</div>
					<div class="file-info-container">
						<div class="file-container">
							첨부파일은 최대 5개, 30MB까지 등록 가능합니다. <label for="file" class="file-font">파일
								첨부</label>
						</div>

						<div class="file-wrapper">

							<input type="file" id="file" />
						</div>
						<div class="file-info">
							<span class="file-size"><span class="bold">0MB</span> /
								30MB</span>
						</div>
						<button type="submit" class="submit-btn">등록하기</button>
					</div>
				</div>
			</form>

		</div>
	</div>
</body>
</html>