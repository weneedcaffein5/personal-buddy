<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    <!-- 모달은 메인 영역 밖으로 빼어 놓는게 좋음-->
    <div id="yrModal">
        <div id="cont" style="text-align: center;">
            <br>
            <h1>예린 모달 모달</h1>
            시작일 <input type="text" id="schStart" value=""><br>
            종료일 <input type="text" id="schEnd" value=""><br>
            제목 <input type="text" id="schTitle" value=""><br>
            하루종일 <input type="checkbox" id="allDay"><br>
            배경색<input type="color" id="schBColor" value="">
            글자색<input type="color" id="schFColor" value="">
            <button onclick="fCalAdd()">추강</button><br>
            <button onclick="fMClose()">X</button>
        </div>
    </div>
    <!-- 실제 화면을 담을 영역 -->
    <div id="Wrapper">
        <div id='calendar'></div>
    </div>
    
<script src="../assets/js/calendar/calendar.js"></script>

