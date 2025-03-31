<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="folder-wrapper">
	<div class="folder">
		<div class="background-change-form">
			<div class="folder-item">
				<div class=image-text-container>
					<img src="../assets/images/contents/field-bg.png" alt="field-bg"
						class="background-image"> <span>푸른 들판</span>
				</div>

				<input type="hidden" name="selectedBackgroundId" value="1" />

				<div class="background-button-group">
					<button class="change-button">변경</button>
					<button class="remove-button">제거</button>
				</div>
			</div>
		</div>
		<div class="background-change-form">
			<div class="folder-item located">
				<div class=image-text-container>
					<img src="../assets/images/contents/beach-bg.png" alt="beach-bg"
						class="background-image"> <span>야자수 해변</span>
				</div>

				<input type="hidden" name="selectedBackgroundId" value="2" />

				<div class="background-button-group">
					<button class="change-button">변경</button>
					<button class="remove-button">제거</button>
				</div>
			</div>
		</div>
		<div class="background-change-form">
			<div class="folder-item">
				<div class=image-text-container>
					<img src="../assets/images/contents/cherry-tree-bg.png"
						alt="cherry-tree-bg" class="background-image"> <span>빛꽃
						들판</span>
				</div>

				<input type="hidden" name="selectedBackgroundId" value="3" />

				<div class="background-button-group">
					<button class="change-button">변경</button>
					<button class="remove-button">제거</button>
				</div>
			</div>
		</div>
		<div class="folder-item">
			<div class=image-text-container>
				<img src="../assets/images/contents/night-field-bg.png"
					alt="night-field-bg" class="background-image"> <span>달
					밝은 밤</span>
			</div>

			<input type="hidden" name="selectedBackgroundId" value="4" />

			<div class="background-button-group">
				<button class="change-button">변경</button>
				<button class="remove-button">제거</button>
			</div>
		</div>
		<div class="folder-item">
			<div class=image-text-container>
				<img src="../assets/images/contents/halloween-bg.png"
					alt="halloween-bg" class="background-image"> <span>할로윈</span>
			</div>

			<input type="hidden" name="selectedBackgroundId" value="5" />

			<div class="background-button-group">
				<button class="change-button">변경</button>
				<button class="remove-button">제거</button>
			</div>
		</div>
		<div class="folder-item">
			<div class=image-text-container>
				<img src="../assets/images/contents/rain-mountain-bg.png"
					alt="rain-mountain-bg" class="background-image"> <span>비내리는
					경치</span>
			</div>

			<input type="hidden" name="selectedBackgroundId" value="6" />

			<div class="background-button-group">
				<button class="change-button">변경</button>
				<button class="remove-button">제거</button>
			</div>
		</div>
		<div class="background-change-form">
			<div class="folder-item">
				<div class=image-text-container>
					<img src="../assets/images/contents/dessert-bg.png"
						alt="dessert-bg" class="background-image"> <span>쓸쓸한
						사막</span>
				</div>

				<input type="hidden" name="selectedBackgroundId" value="7" />

				<div class="background-button-group">
					<button class="change-button">변경</button>
					<button class="remove-button">제거</button>
				</div>
			</div>
		</div>
		<div class="background-change-form">
			<div class="folder-item">
				<div class=image-text-container>
					<img src="../assets/images/contents/lego-building-bg.png"
						alt="lego-building-bg" class="background-image"> <span>레고
						빌딩</span>
				</div>

				<input type="hidden" name="selectedBackgroundId" value="8" />

				<div class="background-button-group">
					<button class="change-button">변경</button>
					<button class="remove-button">제거</button>
				</div>
			</div>
		</div>
		<div class="background-change-form">
			<div class="folder-item">
				<div class=image-text-container>
					<img src="../assets/images/contents/snow-bg.png" alt="snow-bg"
						class="background-image"> <span>눈 덮인 풍경</span>
				</div>

				<input type="hidden" name="selectedBackgroundId" value="9" />

				<div class="background-button-group">
					<button class="change-button">변경</button>
					<button class="remove-button">제거</button>
				</div>
			</div>
		</div>

		<div class="background-change-form">
			<div class="folder-item">
				<div class=image-text-container>
					<img src="../assets/images/contents/dream-field-bg.png"
						alt="dream-field-bg" class="background-image"> <span>몽환적
						풍경</span>
				</div>

				<input type="hidden" name="selectedBackgroundId" value="10" />

				<div class="background-button-group">
					<button class="change-button">변경</button>
					<button class="remove-button">제거</button>
				</div>
			</div>
		</div>
		<div class="background-change-form">
			<div class="folder-item">
				<div class=image-text-container>
					<img src="../assets/images/contents/rain-ocean-bg.png"
						alt="rain-ocean-bg" class="background-image"> <span>비내리는
						해변</span>
				</div>

				<input type="hidden" name="selectedBackgroundId" value="11" />

				<div class="background-button-group">
					<button class="change-button">변경</button>
					<button class="remove-button">제거</button>
				</div>
			</div>
		</div>
		<div class="background-change-form">
			<div class="folder-item">
				<div class=image-text-container>
					<img src="../assets/images/contents/field-bg2.png" alt="field-bg2"
						class="background-image"> <span>석양지는 논밭</span>
				</div>

				<input type="hidden" name="selectedBackgroundId" value="12" />

				<div class="background-button-group">
					<button class="change-button">변경</button>
					<button class="remove-button">제거</button>
				</div>
			</div>
		</div>
	</div>
	<form id="saveBackgroundForm" action="myBackground.contents"
		method="post" style="display: none;">
		<input type="hidden" name="selectedBackgroundId"
			id="finalSelectedBackgroundId">
	</form>