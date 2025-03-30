<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
		<div class="folder-wrapper">
			<div class="folder">

				<!-- tree1 -->
				<div class="tree-change-form">
					<div class="folder-item">
						<img src="../assets/images/contents/tree/tree1.png" alt="field-bg"
							class="sticker-image"> <span>단풍나무1</span><span>보유 :
							2</span> <input type="hidden" name="selectedTreeId" value="1" />

						<div class="tree-item-button-group">
							<button class="change-button" type="button">변경</button>
							<button class="remove-button" type="button">제거</button>
						</div>
					</div>
				</div>

				<!-- tree2 -->
				<div class="tree-change-form">
					<div class="folder-item">
						<img src="../assets/images/contents/tree/tree2.png" alt="beach-bg"
							class="sticker-image"> <span>단풍나무2</span><span>보유 :
							2</span> <input type="hidden" name="selectedTreeId" value="2" />

						<div class="tree-item-button-group">
							<button class="change-button" type="button">변경</button>
							<button class="remove-button" type="button">제거</button>
						</div>
					</div>
				</div>

				<!-- tree3 -->
				<div class="tree-change-form">
					<div class="folder-item">
						<img src="../assets/images/contents/tree/tree3.png"
							alt="cherry-tree-bg" class="sticker-image"> <span>단풍나무3</span><span>보유
							: 1</span> <input type="hidden" name="selectedTreeId" value="3" />

						<div class="tree-item-button-group">
							<button class="change-button" type="button">변경</button>
							<button class="remove-button" type="button">제거</button>
						</div>
					</div>
				</div>

				<!-- tree4 -->
				<div class="tree-change-form">
					<div class="folder-item">
						<img src="../assets/images/contents/tree/tree4.png"
							alt="night-field-bg" class="sticker-image"> <span>나무1</span><span>보유
							: 1</span> <input type="hidden" name="selectedTreeId" value="4" />

						<div class="tree-item-button-group">
							<button class="change-button" type="button">변경</button>
							<button class="remove-button" type="button">제거</button>
						</div>
					</div>
				</div>

				<!-- tree5 -->
				<div class="tree-change-form">
					<div class="folder-item">
						<img src="../assets/images/contents/tree/tree5.png"
							alt="halloween-bg" class="sticker-image"> <span>나무2</span><span>보유
							: 1</span> <input type="hidden" name="selectedTreeId" value="5" />

						<div class="tree-item-button-group">
							<button class="change-button" type="button">변경</button>
							<button class="remove-button" type="button">제거</button>
						</div>
					</div>
				</div>

				<!-- tree6 -->
				<div class="tree-change-form">
					<div class="folder-item">
						<img src="../assets/images/contents/tree/tree6.png"
							alt="rain-mountain-bg" class="sticker-image"> <span>나무3</span><span>보유
							: 1</span> <input type="hidden" name="selectedTreeId" value="6" />

						<div class="tree-item-button-group">
							<button class="change-button" type="button">변경</button>
							<button class="remove-button" type="button">제거</button>
						</div>
					</div>
				</div>

			</div>
		</div>

<form id="saveTreeForm" action="myTree.contents" method="post" style="display: none;">
  <input type="hidden" name="selectedTreeId" id="finalSelectedTreeId">
</form>
