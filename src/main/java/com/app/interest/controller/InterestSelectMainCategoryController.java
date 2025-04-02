package com.app.interest.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class InterestSelectMainCategoryController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
		int mainCategoryIndex = 0;
		int mainCategoryIndexMax = 0;
		int mainCategoryIndexCheck = 0;

//		메인에서 서브로 넘어가기 전에 값을 초기화
		if (session.getAttribute("sub-category-ball-games") != null) {
			session.removeAttribute("sub-category-ball-games");
		}
		if (session.getAttribute("sub-category-fashion") != null) {
			session.removeAttribute("sub-category-fashion");
		}
		if (session.getAttribute("sub-category-food") != null) {
			session.removeAttribute("sub-category-food");
		}
		if (session.getAttribute("sub-category-movie") != null) {
			session.removeAttribute("sub-category-movie");
		}
		if (session.getAttribute("sub-category-music") != null) {
			session.removeAttribute("sub-category-music");
		}
		if (session.getAttribute("sub-category-musical-instrument") != null) {
			session.removeAttribute("sub-category-musical-instrument");
		}
		if (session.getAttribute("sub-category-reading") != null) {
			session.removeAttribute("sub-category-reading");
		}
		if (session.getAttribute("sub-category-sports") != null) {
			session.removeAttribute("sub-category-sports");
		}
		if (session.getAttribute("sub-category-travel") != null) {
			session.removeAttribute("sub-category-travel");
		}
		
//		리퀘에서 메인 카테고리 받고 ,을 기준으로 배열로 나누기
		String mainCategory = req.getParameter("mainCategory");
		String[] mainCategoryArray = mainCategory.split(",");
//		메인 카테고리 배열의 인덱스값
		mainCategoryIndexMax = mainCategoryArray.length;
		mainCategoryIndexCheck = mainCategoryArray.length - 1;
		System.out.println(mainCategoryIndexMax + " / 카테고리 최댓값");
		System.out.println(mainCategoryIndexCheck + " / 카테고리 최대값 - 1");
		
//		배열, 인덱스 주소값, 최대 인덱스 길이 값을 세션에 저장
		session.setAttribute("mainCategoryArray", mainCategoryArray);
		session.setAttribute("mainCategoryIndex", mainCategoryIndex);
		session.setAttribute("mainCategoryIndexMax", mainCategoryIndexMax);
		session.setAttribute("mainCategoryIndexCheck", mainCategoryIndexCheck);
		
		result.setPath("interest-sub-category.interest");
		return result;
	}
}
