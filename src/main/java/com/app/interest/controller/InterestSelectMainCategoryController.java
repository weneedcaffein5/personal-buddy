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
		
//		리퀘에서 메인 카테고리 받고 ,을 기준으로 배열로 나누기
		String mainCategory = req.getParameter("mainCategory");
		String[] mainCategoryArray = mainCategory.split(",");
//		메인 카테고리 배열의 인덱스값
		mainCategoryIndex = mainCategoryArray.length - 1;
		
//		배열, 인덱스 주소값, 최대 인덱스 길이 값을 세션에 저장
		session.setAttribute("mainCategoryArray", mainCategoryArray);
		session.setAttribute("mainCategoryIndex", mainCategoryIndex);
		session.setAttribute("mainCategoryIndexMax", mainCategoryIndex);
		
		result.setPath("interest-sub-category.interest");
		return result;
	}
}
