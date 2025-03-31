package com.app.interest.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class InterestBackController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, SecurityException {
		Result result = new Result();
		HttpSession session = req.getSession();
//		메인 카테고리[현재 인덱스]와 최대 인덱스 범위를 받기
		int mainCategoryIndex = (int)session.getAttribute("mainCategoryIndex");
		
//		메인 카테고리의 현재 인덱스 변동
		mainCategoryIndex = mainCategoryIndex - 1;
		session.setAttribute("mainCategoryIndex", mainCategoryIndex);
		
//		만약 현재 인덱스가 최소 인덱스 범위보다 작으면 다시 메인 카테고리 선택으로 이동
		if (mainCategoryIndex == -1) {
			result.setPath("interest-main-category.interest");
			return result;
//		아니라면 이전 인덱스로 이동
		} else {
			result.setPath("interest-sub-category.interest");
			return result;
		}
		
	}

}
