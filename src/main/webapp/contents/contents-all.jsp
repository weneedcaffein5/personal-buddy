<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="folder-wrapper">
		<div class="folder">

			<!--  나무 아이템 출력 -->
			<c:forEach var="item" items="${treeAndBgItems}">
				<c:if test="${item.itemType == 'TREE'}">
						<div class="folder-item">
							<img
								src="${pageContext.request.contextPath}${item.itemImgPath}/${item.itemImgName}"
								alt="${item.itemName}" class="tree-item-image" /> <span>${item.itemName}</span>
							<input type="hidden" name="selectedTreeId" value="${item.itemId}" />
							<div class="tree-item-button-group">
								<button class="change-button">변경</button>
								<button class="remove-button">제거</button>
							</div>
						</div>
					
				</c:if>
			</c:forEach>

			<!--  배경 아이템 출력 -->
			<c:forEach var="item" items="${treeAndBgItems}">
				<c:if test="${item.itemType == 'BACKGROUND'}">
						<div class="folder-item">
							<div class="image-text-container">
								<img
									src="${pageContext.request.contextPath}${item.itemImgPath}/${item.itemImgName}"
									alt="${item.itemName}" class="background-image" /> <span>${item.itemName}</span>
							</div>
							<input type="hidden" name="selectedBackgroundId"
								value="${item.itemId}" />
							<div class="background-button-group">
								<button class="change-button">변경</button>
								<button class="remove-button">제거</button>
							</div>
					</div>
				</c:if>
			</c:forEach>

			<!--  스티커 아이템 출력 -->
			<c:forEach var="item" items="${stickerItems}">
				<div class="folder-item">
					<img
						src="${pageContext.request.contextPath}${item.itemImgPath}/${item.itemImgName}"
						alt="${item.itemName}" class="sticker-image" /> <span>${item.itemName}</span>
					<span>보유: ${item.itemCount}</span>
					<div class="sticker-button-group">
						<button class="change-button">변경</button>
						<button class="remove-button">제거</button>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

</body>
</html>