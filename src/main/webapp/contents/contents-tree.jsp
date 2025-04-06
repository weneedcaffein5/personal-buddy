<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<div class="folder-wrapper">
	<div class="folder">

		<!-- tree1 -->
		<c:forEach var="contents" items="${treeItems}">
			<div class="tree-change-form">
				<div class="folder-item">
					<img src="${contents.itemImgPath}" alt="${contents.itemImgName}"
						class="sticker-image"> <span>${contents.itemName}</span> 
						<input type="hidden" name="selectedTreeId"
						value="${contents.itemId}" />

					<div class="tree-item-button-group">
						<button class="change-button" type="button">변경</button>
						<button class="remove-button" type="button">제거</button>
					</div>
				</div>
			</div>
		</c:forEach>


	</div>
</div>

<form id="saveTreeForm" action="contents-mytree.contents" method="post"
	style="display: none;">
	<input type="hidden" name="selectedTreeId" id="finalSelectedTreeId">
</form>

