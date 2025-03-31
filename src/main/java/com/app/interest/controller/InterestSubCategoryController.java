package com.app.interest.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class InterestSubCategoryController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		
//		메인 카테고리(배열)을 세션에서 받기
		String[] mainCategoryArray = (String[])session.getAttribute("mainCategoryArray");
		for (int i = 0; i < mainCategoryArray.length; i++) {
			System.out.println(mainCategoryArray[i] + " / 메인 카테고리 배열");
		}
		
//		메인 카테고리[현재 인덱스]를 세션에서 받기
		int mainCategoryIndex = (int)session.getAttribute("mainCategoryIndex");
		System.out.println(mainCategoryIndex + " / 메인 카테고리 현재 인덱스");
		
//		메인 카테고리[현재 인덱스]값을 저장
		String mainCategory = mainCategoryArray[mainCategoryIndex];
		System.out.println(mainCategory + " / 메인 카테고리 현재 인덱스값");
		
//		메인 카테고리[현재 인덱스]가 해당하는 주소로 이동
		if (mainCategory.equals("구기 종목")) {
			result.setPath("../interest/interest-sub-ball-games.jsp");
			return result;
		}
		if (mainCategory.equals("패션")) {
			result.setPath("../interest/interest-sub-fashion.jsp");
			return result;
		}
		if (mainCategory.equals("맛집 탐방")) {
			result.setPath("../interest/interest-sub-food.jsp");
			return result;
		}
		if (mainCategory.equals("영화 감상")) {
			result.setPath("../interest/interest-sub-movie.jsp");
			return result;
		}
		if (mainCategory.equals("음악 감상")) {
			result.setPath("../interest/interest-sub-music.jsp");
			return result;
		}
		if (mainCategory.equals("연주")) {
			result.setPath("../interest/interest-sub-musical-instrument.jsp");
			return result;
		}
		if (mainCategory.equals("독서")) {
			result.setPath("../interest/interest-sub-reading.jsp");
			return result;
		}
		if (mainCategory.equals("운동")) {
			result.setPath("../interest/interest-sub-sports.jsp");
			return result;
		}
		if (mainCategory.equals("여행")) {
			result.setPath("../interest/interest-sub-travel.jsp");
			return result;
		} 
		result.setPath("../interest/interest-main.jsp");
		return result;
	}
}