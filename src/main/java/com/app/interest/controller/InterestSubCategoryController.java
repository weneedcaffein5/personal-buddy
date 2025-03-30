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
		String[] mainCategoryArray = (String[])session.getAttribute("mainCategoryArray");
		int mainCategoryLength = (int)session.getAttribute("mainCategoryLength");
		String mainCategory = mainCategoryArray[mainCategoryLength];
		
		System.out.println(mainCategory);
		
		if (mainCategory.equals("구기 종목")) {
			result.setPath("interest-sub-ball-games.jsp");
			return result;
		} else if (mainCategory.equals("패션")) {
			result.setPath("interest-sub-fashion.jsp");
			return result;
		} else if (mainCategory.equals("맛집 탐방")) {
			result.setPath("interest-sub-food.jsp");
			return result;
		} else if (mainCategory.equals("영화 감상")) {
			result.setPath("interest-sub-movie.jsp");
			return result;
		} else if (mainCategory.equals("음악 감상")) {
			result.setPath("interest-sub-music.jsp");
			return result;
		} else if (mainCategory.equals("연주")) {
			result.setPath("interest-sub-musical-instrument.jsp");
			return result;
		} else if (mainCategory.equals("독서")) {
			result.setPath("interest-sub-reading.jsp");
			return result;
		} else if (mainCategory.equals("운동")) {
			result.setPath("interest-sub-sports.jsp");
			return result;
		} else if (mainCategory.equals("여행")) {
			result.setPath("interest-sub-travel.jsp");
			return result;
		} else {
			result.setPath("interest-main.jsp");
			return result;
		}
	}
}