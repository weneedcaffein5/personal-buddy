<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>탭 네비게이션</title>
    <link rel="stylesheet" href="../assets/css/contents/contents.css" />
    <link rel="stylesheet" href="../assets/css/global.css" />
</head>
<body>
    <div class="page-container">
        <div class="tab-container">
            <div class="tab" id="tab1">업적</div>
            <div class="tab active" id="tab2">나의 성장 나무</div>
            <div class="tab" id="tab3">포인트 샵</div>
        </div>
        <h1 class="tree-title-word">나의 성장나무</h1>
        <div class="tree-wrapper">
            <div class="tree-container">
                <div class="tree-box"></div>
            </div>
            <div class="tree-button-group">
                <button class="save-button">저장</button>
                <button class="cancel-button">취소</button>
            </div>
        </div>
        <h1 class="decorate-title-word">나의 꾸미기</h1>
        <div class="decorate-tab-container">
            <button class="decorate-tab">전체</button>
            <button class="decorate-tab">배경</button>
            <button class="decorate-tab">스티커</button>
            <button class="decorate-tab">나무</button>
        </div>
        <div class="container">
            <h2 class="decorate-menu-word">전체 | 배경 | 바닥</h2>
            <div class="folder-wrapper">
                <div class="folder">
                    <div class="folder-item">
                    <img src="../assets/images/contents/field-bg.png" alt="field-bg">
                        <span>푸른 들판</span>
                        <div class="item-button-group">
                            <button>변경</button>
                            <button>제거</button>
                        </div>
                    </div>
                    <div class="folder-item">
                    <img src="../assets/images/contents/beach-bg.png" alt="beach-bg">
                        <span>야자수 해변</span>
                        <div class="item-button-group">
                            <button>변경</button>
                            <button>제거</button>
                        </div>
                    </div>
                    <div class="folder-item">
                    <img src="../assets/images/contents/cherry-tree-bg.png" alt="cherry-tree-bg">
                        <span>빛꽃 들판</span>
                        <div class="item-button-group">
                            <button>변경</button>
                            <button>제거</button>
                        </div>
                    </div>
                    <div class="folder-item">
                    <img src="../assets/images/contents/night-field-bg.png" alt="night-field-bg">
                        <span>달 밝은 밤</span>
                        <div class="item-button-group">
                            <button>변경</button>
                            <button>제거</button>
                        </div>
                    </div>
                     <div class="folder-item">
                     <img src="../assets/images/contents/halloween-bg.png" alt="halloween-bg">
                        <span>할로윈</span>
                        <div class="item-button-group">
                            <button>변경</button>
                            <button>제거</button>
                        </div>
                    </div>
                     <div class="folder-item">
                     <img src="../assets/images/contents/rain-mountain-bg.png" alt="rain-mountain-bg">
                        <span>비내리는 경치</span>
                        <div class="item-button-group">
                            <button>변경</button>
                            <button>제거</button>
                        </div>
                    </div>
                     <div class="folder-item">
                     <img src="../assets/images/contents/dessert-bg.png" alt="dessert-bg">
                        <span>쓸쓸한 사막</span>
                        <div class="item-button-group">
                            <button>변경</button>
                            <button>제거</button>
                        </div>
                    </div>
                     <div class="folder-item">
                     <img src="../assets/images/contents/lego-building-bg.png" alt="lego-building-bg">
                        <span>레고 빌딩</span>
                        <div class="item-button-group">
                            <button>변경</button>
                            <button>제거</button>
                        </div>
                    </div>
                     <div class="folder-item">
                     <img src="../assets/images/contents/snow-bg.png" alt="snow-bg">
                        <span>눈 덮인 풍경</span>
                        <div class="item-button-group">
                            <button>변경</button>
                            <button>제거</button>
                        </div>
                    </div>
                     <div class="folder-item">
                     <img src="../assets/images/contents/dream-field-bg.png" alt="dream-field-bg">
                        <span>몽환적 풍경</span>
                        <div class="item-button-group">
                            <button>변경</button>
                            <button>제거</button>
                        </div>
                    </div>
                    <div class="folder-item">
                    <img src="../assets/images/contents/rain-ocean-bg.png" alt="rain-ocean-bg">
                        <span>비내리는 해변</span>
                        <div class="item-button-group">
                            <button>변경</button>
                            <button>제거</button>
                        </div>
                    </div>
                    <div class="folder-item">
                    <img src="../assets/images/contents/field-bg2.png" alt="field-bg2">
                        <span>석양지는 논밭</span>
                        <div class="item-button-group">
                            <button>변경</button>
                            <button>제거</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="pagination">
                <span class="arrow">&lt;</span>
                <a href="#" class="active">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <span class="dots">...</span>
                <a href="#">10</a>
                <span class="arrow">&gt;</span>
            </div>
        </div>
    </div>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const folderItems = document.querySelectorAll(".folder-item");

            folderItems.forEach((item) => {
                item.addEventListener("click", function () {
                    folderItems.forEach((el) => el.classList.remove("selected"));
                    this.classList.add("selected");
                });
            });

            const tabElements = document.querySelectorAll(".decorate-tab");

            tabElements.forEach((element) => {
                element.addEventListener("click", function () {
                    tabElements.forEach((el) => el.classList.remove("selected"));
                    this.classList.add("selected");
                });
            });
        });
    </script>
</body>
</html>